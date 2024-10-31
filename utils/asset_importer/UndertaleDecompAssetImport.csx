// The code used to dump the assets is a modified version of the code
// from UndertaleModTool's ExportAll*.csx scripts

using System.Drawing;
using System;
using System.IO;
using System.Drawing;
using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using UndertaleModLib.Util;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

EnsureDataLoaded();
Directory.SetCurrentDirectory(Path.GetDirectoryName(ScriptPath));

string decompPath = null;
var projectFilePath = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "NXTale.yyp"));

if (File.Exists(projectFilePath))
    decompPath = projectFilePath;

if (decompPath == null)
    decompPath = PromptLoadFile("NXTale.yyp", "Undertale Decomp|NXTale.yyp");

if (string.IsNullOrEmpty(decompPath))
{
    ScriptError("Path to Decomp is required!");
    return;
}

if (!File.Exists(decompPath))
{
    ScriptError("Path to Decomp is not valid!");
    return;
}

StartProgressBarUpdater();

var decompFolder = Path.GetDirectoryName(decompPath);

var dataWinPath = FilePath;
var dataWinFolder = Path.GetDirectoryName(dataWinPath);

var workFolder = Path.GetFullPath("exported_assets");
string spriteFolder = Path.Combine(workFolder, "sprites");
string fontFolder = Path.Combine(workFolder, "fonts");
string backgroundFolder = Path.Combine(workFolder, "backgrounds");
string soundFolder = Path.Combine(workFolder, "sounds");

if (Directory.Exists(workFolder))
    Directory.Delete(workFolder, true);
Directory.CreateDirectory(spriteFolder);
Directory.CreateDirectory(fontFolder);
Directory.CreateDirectory(backgroundFolder);
Directory.CreateDirectory(soundFolder);

// These paths will be used as additional paths for importing assets in a semi-manual way
// In short, this is where you put the assets that the script couldn't grab from data.win
var externalAssets = Path.GetFullPath("external_assets");
string externalSprites = Path.Combine(externalAssets, "sprites");
string externalFonts = Path.Combine(externalAssets, "fonts");
string externalSounds = Path.Combine(externalAssets, "sounds");

Directory.CreateDirectory(externalSprites);
Directory.CreateDirectory(externalFonts);
Directory.CreateDirectory(externalSounds);

var logFile = new StreamWriter(File.OpenWrite(Path.Combine(workFolder, "log.txt")));
var mappingsFile = new StreamWriter(File.OpenWrite(Path.Combine(workFolder, "log_mappings.txt")));

// DUMP TEXTURES

SetProgressBar(null, "Exporting Textures", 0, Data.TexturePageItems.Count);
TextureWorker worker = new TextureWorker();
await DumpSprites();
await DumpFonts();
await DumpBackgrounds();
worker.Dispose();
logFile.WriteLine($"Exported {Data.TexturePageItems.Count} textures");

// DUMP AUDIO

SetProgressBar(null, "Exporting Sounds", 0, Data.Sounds.Count);

await Task.Run(DumpSounds);

logFile.WriteLine($"Exporting {Data.Sounds.Count} sounds");

// MATCH FONTS

var fontsRequired = Directory
    .GetFiles(Path.Combine(decompFolder, "fonts"), "*.yy", SearchOption.AllDirectories)
    .Select(x => x[..^3] + ".png")
    .ToList();

var fontsAvailable = Enumerable.Empty<string>()
    .Concat(Directory.GetFiles(fontFolder, "*.png"))
    .Concat(Directory.GetFiles(externalFonts, "*.png"))
    .ToList();

var fontsSkipped = new List<string>(); // Not used right now, but added for completeness

var fontsMatched = new Dictionary<string, string?>();

SetProgressBar(null, "Matching fonts", 0, fontsRequired.Count);

foreach (var font in fontsRequired)
{
    var matchedFont = fontsAvailable.FirstOrDefault(x => Path.GetFileNameWithoutExtension(x) == Path.GetFileNameWithoutExtension(font));

    if (matchedFont != null)
    {
        fontsMatched[font] = matchedFont;
    }
}

logFile.WriteLine($"Found {fontsRequired.Count} fonts required");
logFile.WriteLine($"Found {fontsAvailable.Count} fonts available");
logFile.WriteLine($"Found {fontsMatched.Count} font matches");
mappingsFile.WriteLine($"### Fonts Skipped ###");
fontsSkipped.ForEach(x => mappingsFile.WriteLine($"{x}"));
mappingsFile.WriteLine($"### Unmatched Fonts ###");
fontsMatched.Where(x => x.Value == null).ForEach(x => mappingsFile.WriteLine($"{x.Key}"));
mappingsFile.WriteLine($"### Matched Fonts ###");
fontsMatched.Where(x => x.Value != null).ForEach(x => mappingsFile.WriteLine($"{x.Key} => {x.Value}"));

// SPRITE MATCHING

var spriteManifests = Directory
    .GetFiles(Path.Combine(decompFolder, "sprites"), "*.yy", SearchOption.AllDirectories)
    .ToList();

var spritesAvailable = Enumerable.Empty<string>()
    .Concat(Directory.GetFiles(spriteFolder, "*.png"))
    .Concat(Directory.GetFiles(backgroundFolder, "*.png"))
    .Concat(Directory.GetFiles(externalSprites, "*.png"))
    .ToList();

var spritesSkipped = new List<string>();
var spriteFramesRequired = new Dictionary<string, List<string>>();
var spriteLayersRequired = new Dictionary<string, List<string>>();

SetProgressBar(null, "Matching sprites", 0, spriteManifests.Count);

async Task MatchSprites()
{
    foreach (var path in spriteManifests)
    {
        var data = JsonConvert.DeserializeObject<JToken>(File.ReadAllText(Path.Combine(decompFolder, "sprites", path)));

        // We only expect there to be a single layer (i.e. the final composed sprite)
        if (data["layers"].ToObject<List<object>>().Count != 1) {
            ScriptMessage("[WARN] Sprite " + path + " has more than 1 layer!");
        }

        if (data["parent"]["path"].ToObject<string>().Contains("Decomp") || data["parent"]["name"].ToObject<string>().Contains("Decomp")) {
            spritesSkipped.Add(path);
        }
        else {
            spriteFramesRequired[path] = data["frames"].Select(x => x["name"].ToObject<string>()).ToList();
            spriteLayersRequired[path] = data["layers"].Select(x => x["name"].ToObject<string>()).ToList();
        }

        IncrementProgress();
    }
}
await Task.Run(MatchSprites);

var spriteFramesMatched = new Dictionary<string, string?>();
var spriteLayersMatched = new Dictionary<string, string?>();

bool validateTextureSizes = true;
var invalidSpriteSizeCount = 0;

foreach ((var path, var frames) in spriteFramesRequired)
{
    var frameIndex = 0;
    foreach (var frame in frames)
    {
        var desiredTexture = $"{Path.GetFileNameWithoutExtension(path)}_{frameIndex++}";
        var sprite = spritesAvailable.FirstOrDefault(x => desiredTexture == Path.GetFileNameWithoutExtension(x));

        var framePath = Path.Combine(Path.GetDirectoryName(path), $"{frame}.png");
        spriteFramesMatched[framePath] = sprite;
        
        // Layers are in {layers}/{frame_uuid}/{layer_uuid}.png
        var layerPath = Path.Combine(Path.GetDirectoryName(path), "layers", frame, $"{spriteLayersRequired[path][0]}.png");
        spriteLayersMatched[layerPath] = sprite;
    }
}

logFile.WriteLine($"Found {spriteManifests.Count} sprite manifests");
logFile.WriteLine($"Found {spritesAvailable.Count} sprites available");
logFile.WriteLine($"Found {spriteFramesRequired.Count} sprite frames required");
logFile.WriteLine($"Found {spriteLayersRequired.Count} sprite layers required");
logFile.WriteLine($"Found {spriteFramesMatched.Count} sprite frame matches");
logFile.WriteLine($"Found {spriteLayersMatched.Count} sprite layer matches");
logFile.WriteLine($"Found {spritesSkipped.Count} sprites to skip");
mappingsFile.WriteLine($"### Sprites Skipped ###");
spritesSkipped.ForEach(x => mappingsFile.WriteLine($"{x}"));
mappingsFile.WriteLine($"### Unmatched Sprite Frames ###");
spriteFramesMatched.Where(x => x.Value == null).ForEach(x => mappingsFile.WriteLine($"{x.Key}"));
mappingsFile.WriteLine($"### Matched Sprite Frames ###");
spriteFramesMatched.Where(x => x.Value != null).ForEach(x => mappingsFile.WriteLine($"{x.Key} => {x.Value}"));
mappingsFile.WriteLine($"### Unmatched Sprite Layers ###");
spriteLayersMatched.Where(x => x.Value == null).ForEach(x => mappingsFile.WriteLine($"{x.Key}"));
mappingsFile.WriteLine($"### Matched Sprite Layers ###");
spriteLayersMatched.Where(x => x.Value != null).ForEach(x => mappingsFile.WriteLine($"{x.Key} => {x.Value}"));

// AUDIO MATCHING

var audioManifests = Directory
    .GetFiles(Path.Combine(decompFolder, "sounds"), "*.yy", SearchOption.AllDirectories)
    .ToList();

var audioAvailable = Enumerable.Empty<string>()
    .Concat(Directory.GetFiles(soundFolder, "*.mp3"))
    .Concat(Directory.GetFiles(soundFolder, "*.wav"))
    .Concat(Directory.GetFiles(soundFolder, "*.ogg"))
    .Concat(Directory.GetFiles(externalSounds, "*.mp3"))
    .Concat(Directory.GetFiles(externalSounds, "*.wav"))
    .Concat(Directory.GetFiles(externalSounds, "*.ogg"))
    .ToList();

var audioSkipped = new List<string>();

var audioMatched = new Dictionary<string, string?>();

SetProgressBar(null, "Matching audio", 0, audioManifests.Count);

async Task MatchSounds()
{
    foreach (var path in audioManifests)
    {
        var data = JsonConvert.DeserializeObject<JToken>(File.ReadAllText(Path.Combine(decompFolder, "sprites", path)));

        if (data["parent"]["path"].ToObject<string>().Contains("Decomp") || data["parent"]["name"].ToObject<string>().Contains("Decomp"))
        {
            audioSkipped.Add(path);
        }
        else {
            var soundPath = Path.Combine(Path.GetDirectoryName(path), data["soundFile"].ToObject<string>());
            audioMatched[soundPath] = audioAvailable.FirstOrDefault(x => Path.GetFileNameWithoutExtension(x) == Path.GetFileNameWithoutExtension(path));
        }
        IncrementProgress();
    }
}
await Task.Run(MatchSounds);

logFile.WriteLine($"Found {audioManifests.Count} audio manifests");
logFile.WriteLine($"Found {audioAvailable.Count} audio available");
logFile.WriteLine($"Found {audioMatched.Count} audio matches");
logFile.WriteLine($"Found {audioSkipped.Count} audio to skip");
mappingsFile.WriteLine($"### Skipped Audio ###");
audioSkipped.ForEach(x => mappingsFile.WriteLine($"{x}"));
mappingsFile.WriteLine($"### Unmatched Audio ###");
audioMatched.Where(x => x.Value == null).ForEach(x => mappingsFile.WriteLine($"{x.Key}"));
mappingsFile.WriteLine($"### Matched Audio ###");
audioMatched.Where(x => x.Value != null).ForEach(x => mappingsFile.WriteLine($"{x.Key} => {x.Value}"));

// COPY FILES

var confirmImport = ScriptQuestion(
    "Assets prepared for import:\n" +
    $"{fontsMatched.Count(x => x.Value != null)} fonts ({fontsMatched.Count(x => x.Value == null)} unmatched)\n" +
    $"{spriteFramesMatched.Count(x => x.Value != null)} sprite frames ({spriteFramesMatched.Count(x => x.Value == null)} unmatched)\n" +
    $"{spriteLayersMatched.Count(x => x.Value != null)} sprite layers ({spriteLayersMatched.Count(x => x.Value == null)} unmatched)\n" +
    $"{audioMatched.Count(x => x.Value != null)} sounds ({audioMatched.Count(x => x.Value == null)} unmatched)\n" +
    $"Skipped {fontsSkipped.Count} fonts, {spritesSkipped.Count} sprites, and {audioSkipped.Count} sounds (decomp assets)\n" +
    $"Unmatched assets will use placeholders if available\n" +
    "Are you sure you want to import assets into the decomp project?\n" +
    "This will overwrite any existing files!"
);

if (!confirmImport) {
    StopProgressBarUpdater();
    HideProgressBar();
    logFile.Close();
    mappingsFile.Close();
    return;
}

string placeholderFont = null;  // We don't really have issues with missing fonts
string placeholderSprite = spritesAvailable.FirstOrDefault(x => x.Contains("spr_tobdogl_still"));
string placeholderAudio = audioAvailable.FirstOrDefault(x => x.Contains("mus_dogsong"));

logFile.WriteLine($"Using {placeholderFont} as placeholder font texture");
logFile.WriteLine($"Using {placeholderSprite} as placeholder sprite texture");
logFile.WriteLine($"Using {placeholderAudio} as placeholder audio file");

fontsMatched = fontsMatched
    .Select(x => new KeyValuePair<string, string>(x.Key, x.Value ?? placeholderFont))
    .Where(x => x.Value != null)
    .ToDictionary(x => x.Key, x => x.Value);

spriteFramesMatched = spriteFramesMatched
    .Select(x => new KeyValuePair<string, string>(x.Key, x.Value ?? placeholderSprite))
    .Where(x => x.Value != null)
    .ToDictionary(x => x.Key, x => x.Value);

spriteLayersMatched = spriteLayersMatched
    .Select(x => new KeyValuePair<string, string>(x.Key, x.Value ?? placeholderSprite))
    .Where(x => x.Value != null)
    .ToDictionary(x => x.Key, x => x.Value);

audioMatched = audioMatched
    .Select(x => new KeyValuePair<string, string>(x.Key, x.Value ?? placeholderAudio))
    .Where(x => x.Value != null)
    .ToDictionary(x => x.Key, x => x.Value);

int totalCount = fontsMatched.Count + spriteFramesMatched.Count + spriteLayersMatched.Count + audioMatched.Count;

SetProgressBar(null, "Importing assets", 0, totalCount);

int missingSources =
    fontsMatched.Values.Count(x => !File.Exists(x)) +
    spriteFramesMatched.Values.Count(x => !File.Exists(x)) +
    spriteLayersMatched.Values.Count(x => !File.Exists(x)) +
    audioMatched.Values.Count(x => !File.Exists(x));

if (missingSources > 0)
{
    ScriptError($"Found {missingSources} missing sources!");
    return;
}

async void CopyFiles(Dictionary<string, string> fileMap)
{
    foreach ((var dest, var src) in fileMap)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(dest));
        File.Copy(src, dest, true);
        AddProgressParallel(1);
    }
}

await Task.Run(() => CopyFiles(fontsMatched));
await Task.Run(() => CopyFiles(spriteFramesMatched));
await Task.Run(() => CopyFiles(spriteLayersMatched));
await Task.Run(() => CopyFiles(audioMatched));

StopProgressBarUpdater();
HideProgressBar();
logFile.Close();
mappingsFile.Close();

ScriptMessage("Import finished successfully!");

// OTHER UTILS

static void ForEach<T>(this IEnumerable<T> enumeration, Action<T> action)
{
    foreach(T item in enumeration)
    {
        action(item);
    }
}

// EXPORT UTILS

async Task DumpSprites()
{
    await Task.Run(() => Parallel.ForEach(Data.Sprites, DumpSprite));
}

async Task DumpBackgrounds()
{
    await Task.Run(() => Parallel.ForEach(Data.Backgrounds, DumpBackground));
}

async Task DumpFonts()
{
    await Task.Run(() => Parallel.ForEach(Data.Fonts, DumpFont));
}

void DumpSounds()
{
    foreach (UndertaleSound sound in Data.Sounds)
        DumpSound(sound);
}

void DumpSprite(UndertaleSprite sprite)
{
    for (int i = 0; i < sprite.Textures.Count; i++)
    {
        if (sprite.Textures[i]?.Texture != null)
        {
            UndertaleTexturePageItem tex = sprite.Textures[i].Texture;
            worker.ExportAsPNG(tex, Path.Combine(spriteFolder, sprite.Name.Content + "_" + i + ".png"), includePadding: true);
        }
    }

    AddProgressParallel(sprite.Textures.Count);
}

void DumpFont(UndertaleFont font)
{
    if (font.Texture != null)
    {
        UndertaleTexturePageItem tex = font.Texture;
        worker.ExportAsPNG(tex, Path.Combine(fontFolder, font.Name.Content + ".png"), includePadding: true);

        IncrementProgressParallel();
    }
}

void DumpBackground(UndertaleBackground background)
{
    if (background.Texture != null)
    {
        UndertaleTexturePageItem tex = background.Texture;
        worker.ExportAsPNG(tex, Path.Combine(backgroundFolder, background.Name.Content + "_0.png"), includePadding: true);

        IncrementProgressParallel();
    }
}

void DumpSound(UndertaleSound sound)
{
    string soundName = sound.Name.Content;
    bool flagCompressed = sound.Flags.HasFlag(UndertaleSound.AudioEntryFlags.IsCompressed);
    bool flagEmbedded = sound.Flags.HasFlag(UndertaleSound.AudioEntryFlags.IsEmbedded);
    // Compression, Streamed, Unpack on Load.
    // 1 = 000 = IsEmbedded, Regular.               '.wav' type saved in win.
    // 2 = 100 = IsCompressed, Regular.             '.ogg' type saved in win
    // 3 = 101 = IsEmbedded, IsCompressed, Regular. '.ogg' type saved in win.
    // 4 = 110 = Regular.                           '.ogg' type saved outside win.
    string audioExt = ".ogg";
    string soundFilePath;

    soundFilePath = Path.Combine(soundFolder, soundName);

    bool process = true;

    if (flagEmbedded && !flagCompressed) // 1.
        audioExt = ".wav";
    else if (flagCompressed && !flagEmbedded) // 2.
        audioExt = ".ogg";
    else if (flagCompressed && flagEmbedded) // 3.
        audioExt = ".ogg";
    else if (!flagCompressed && !flagEmbedded)
    {
        process = false;
        audioExt = ".ogg";
        string source = Path.Combine(dataWinFolder, soundName + audioExt);
        string dest = Path.Combine(soundFolder, soundName + audioExt);

        if (File.Exists(source))
            File.Copy(source, dest, false);
    }

    if (process && !File.Exists(soundFilePath + audioExt))
        File.WriteAllBytes(soundFilePath + audioExt, GetSoundData(sound));

    IncrementProgress();
}

// AUDIO UTILS

byte[] EMPTY_WAV_FILE_BYTES = System.Convert.FromBase64String("UklGRiQAAABXQVZFZm10IBAAAAABAAIAQB8AAAB9AAAEABAAZGF0YQAAAAA=");
string DEFAULT_AUDIOGROUP_NAME = "audiogroup_default";

Dictionary<string, IList<UndertaleEmbeddedAudio>> loadedAudioGroups;
IList<UndertaleEmbeddedAudio> GetAudioGroupData(UndertaleSound sound)
{
    if (loadedAudioGroups is null)
        loadedAudioGroups = new Dictionary<string, IList<UndertaleEmbeddedAudio>>();

    string audioGroupName = sound.AudioGroup is not null ? sound.AudioGroup.Name.Content : DEFAULT_AUDIOGROUP_NAME;
    if (loadedAudioGroups.ContainsKey(audioGroupName))
        return loadedAudioGroups[audioGroupName];

    string groupFilePath = Path.Combine(dataWinFolder, "audiogroup" + sound.GroupID + ".dat");
    if (!File.Exists(groupFilePath))
        return null; // Doesn't exist.

    try
    {
        UndertaleData data = null;
        using (var stream = new FileStream(groupFilePath, FileMode.Open, FileAccess.Read))
            data = UndertaleIO.Read(stream, warning => ScriptMessage("A warning occured while trying to load " + audioGroupName + ":\n" + warning));

        loadedAudioGroups[audioGroupName] = data.EmbeddedAudio;
        return data.EmbeddedAudio;
    }
    catch (Exception e)
    {
        ScriptMessage("An error occured while trying to load " + audioGroupName + ":\n" + e.Message);
        return null;
    }
}

byte[] GetSoundData(UndertaleSound sound)
{
    if (sound.AudioFile is not null)
        return sound.AudioFile.Data;

    if (sound.GroupID > Data.GetBuiltinSoundGroupID())
    {
        IList<UndertaleEmbeddedAudio> audioGroup = GetAudioGroupData(sound);
        if (audioGroup is not null)
            return audioGroup[sound.AudioID].Data;
    }
    return EMPTY_WAV_FILE_BYTES;
}
