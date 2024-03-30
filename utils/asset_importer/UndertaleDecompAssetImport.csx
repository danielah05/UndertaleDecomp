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
worker.Cleanup();
logFile.WriteLine($"Exported {Data.TexturePageItems.Count} textures");

// DUMP AUDIO

SetProgressBar(null, "Exporting Sounds", 0, Data.Sounds.Count);

await Task.Run(DumpSounds);

logFile.WriteLine($"Exporting {Data.Sounds.Count} sounds");

// PATCH TILESETS

var tilesetsExpected = 37;
SetProgressBar(null, "Patching tileset sprites", 0, tilesetsExpected);

void PatchTilesets() {
    var allSprites = Enumerable.Empty<string>()
        .Concat(Directory.GetFiles(spriteFolder, "*.png"))
        .Concat(Directory.GetFiles(backgroundFolder, "*.png"))
        .ToList();

    int howMany = allSprites.Select(x => ProcessTileset(x)).Count(x => x);
    logFile.Write($"Patched {howMany} tilesets");
}
await Task.Run(PatchTilesets);

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

logFile.Write($"Found {fontsRequired.Count} fonts required");
logFile.Write($"Found {fontsAvailable.Count} fonts available");
logFile.Write($"Found {fontsMatched.Count} font matches");
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

logFile.Write($"Found {spriteManifests.Count} sprite manifests");
logFile.Write($"Found {spritesAvailable.Count} sprites available");
logFile.Write($"Found {spriteFramesRequired.Count} sprite frames required");
logFile.Write($"Found {spriteLayersRequired.Count} sprite layers required");
logFile.Write($"Found {spriteFramesMatched.Count} sprite frame matches");
logFile.Write($"Found {spriteLayersMatched.Count} sprite layer matches");
logFile.Write($"Found {spritesSkipped.Count} sprites to skip");
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

logFile.Write($"Found {audioManifests.Count} audio manifests");
logFile.Write($"Found {audioAvailable.Count} audio available");
logFile.Write($"Found {audioMatched.Count} audio matches");
logFile.Write($"Found {audioSkipped.Count} audio to skip");
mappingsFile.WriteLine($"### Skipped Audio ###");
audioSkipped.ForEach(x => mappingsFile.WriteLine($"{x}"));
mappingsFile.WriteLine($"### Unmatched Audio ###");
audioMatched.Where(x => x.Value == null).ForEach(x => mappingsFile.WriteLine($"{x.Key}"));
mappingsFile.WriteLine($"### Matched Audio ###");
audioMatched.Where(x => x.Value != null).ForEach(x => mappingsFile.WriteLine($"{x.Key} => {x.Value}"));

// COPY FILES

var confirmImport = ScriptQuestion(
    "Assets prepared for import:\n" +
    $"{fontsMatched.Count(x => x.Value != null)} fonts ({fontsMatched.Count(x => x.Value == null)} failed to match)\n" +
    $"{spriteFramesMatched.Count(x => x.Value != null)} sprite frames ({spriteFramesMatched.Count(x => x.Value == null)} failed to match)\n" +
    $"{spriteLayersMatched.Count(x => x.Value != null)} sprite frames ({spriteLayersMatched.Count(x => x.Value == null)} failed to match)\n" +
    $"{audioMatched.Count(x => x.Value != null)} sounds ({audioMatched.Count(x => x.Value == null)} failed to match)\n" +
    $"Skipped {fontsSkipped.Count} fonts, {spritesSkipped.Count} sprites, and {audioSkipped.Count} sounds (decomp assets)\n" +
    "Are you sure you want to import assets into the decomp project?\n" +
    "This will overwrite any existing files!"
);

logFile.Close();
mappingsFile.Close();

if (!confirmImport) {
    StopProgressBarUpdater();
    HideProgressBar();
    return;
}

fontsMatched = fontsMatched.Where(x => x.Value != null).ToDictionary(x => x.Key, x => x.Value);
spriteFramesMatched = spriteFramesMatched.Where(x => x.Value != null).ToDictionary(x => x.Key, x => x.Value);
spriteLayersMatched = spriteLayersMatched.Where(x => x.Value != null).ToDictionary(x => x.Key, x => x.Value);
audioMatched = audioMatched.Where(x => x.Value != null).ToDictionary(x => x.Key, x => x.Value);

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

// BITMAP UTILS

bool ProcessTileset(string imagePath)
{
    string imageId = Path.GetFileNameWithoutExtension(imagePath).Replace("_0", "");

    const int tileSize = 20;

    bool noAutomaticPadding =
        imageId == "bg_tundratiles" ||
        imageId == "bg_icecave" ||
        imageId == "bg_endtileset";

    Bitmap source;

    using (var image = Image.FromFile(imagePath))
    {
        source = new Bitmap(image);

        if (!noAutomaticPadding)
            source = source.PadToTileSize(tileSize);
    }

    Bitmap? destination = null;

    static (int X, int Y) TileAt(int x, int y) => new(x * tileSize, y * tileSize);

    switch (imageId)
    {
        case "bg_alphyslaboutside":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 1), tileSize);
            break;
        case "bg_brownground":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 3), tileSize);
            break;
        case "bg_conveyor_markers":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 2), tileSize);
            break;
        case "bg_coretiles_erase":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(7, 0), tileSize);
            break;
        case "bg_coretiles_wip":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(12, 0), tileSize);
            break;
        case "bg_endtileset":
            destination = source;  // No changes here
            break;
        case "bg_fences":
            destination = source
                .PadImage(0, tileSize, 0, 0)
                .SwapAndCopyTiles(TileAt(4, 0), TileAt(5, 0), tileSize)
                .SwapAndCopyTiles(TileAt(3, 0), TileAt(4, 0), tileSize)
                .SwapAndCopyTiles(TileAt(2, 0), TileAt(3, 0), tileSize)
                .SwapAndCopyTiles(TileAt(1, 0), TileAt(2, 0), tileSize)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(1, 0), tileSize);
            break;
        case "bg_firetiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(6, 1), tileSize);
            break;
        case "bg_girdertile":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 4), tileSize);
            break;
        case "bg_greyruinsborder":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 5), tileSize);
            break;
        case "bg_greyruinsplaceholder":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(4, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_hotelbed":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 4), tileSize);
            break;
        case "bg_hoteldesk":
            destination = source
                .PadImage(0, 0, 0, tileSize);
            break;
        case "bg_hoteltile":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(3, 3), tileSize);
            break;
        case "bg_icecave":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(4, 0), tileSize);
            break;
        case "bg_icewater":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(1, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_labtiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(2, 0), tileSize);
            break;
        case "bg_m_darktiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(3, 0), tileSize);
            break;
        case "bg_myhouse":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(3, 2), tileSize);
            break;
        case "bg_pipezone_tiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(3, 2), tileSize);
            break;
        case "bg_ruins_tint":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(3, 11), tileSize);
            break;
        case "bg_ruinseasynam1":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(4, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_ruinseasynam2":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(4, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_ruinseasynam3":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(3, 11), tileSize);
            break;
        case "bg_ruinsplaceholder":
            destination = source
                .SwapAndCopyTiles(TileAt(2, 0), TileAt(3, 0), tileSize)
                .SwapAndCopyTiles(TileAt(1, 0), TileAt(2, 0), tileSize)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(1, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_ruinsplaceholder2":
            destination = source
                .SwapAndCopyTiles(TileAt(3, 0), TileAt(4, 0), tileSize)
                .SwapAndCopyTiles(TileAt(2, 0), TileAt(3, 0), tileSize)
                .SwapAndCopyTiles(TileAt(1, 0), TileAt(2, 0), tileSize)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(1, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_ruintiles1":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(2, 1), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_sansbasement_tiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(2, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_sanscorridor":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 20), tileSize);
            break;
        case "bg_shottile":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 4), tileSize);
            break;
        case "bg_spiderroom":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 4), tileSize);
            break;
        case "bg_tempfiretile":
            destination = source
                .PadImage(0, 0, tileSize, 0)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(0, 2), tileSize);
            break;
        case "bg_truelab_tiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(5, 0), tileSize);
            break;
        case "bg_tundratiles":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(4, 0), tileSize)
                .ClearTile(TileAt(0, 0), tileSize);
            break;
        case "bg_watertiles":
            destination = source
                .SwapAndCopyTiles(TileAt(4, 0), TileAt(5, 0), tileSize)
                .SwapAndCopyTiles(TileAt(3, 0), TileAt(4, 0), tileSize)
                .SwapAndCopyTiles(TileAt(2, 0), TileAt(3, 0), tileSize)
                .SwapAndCopyTiles(TileAt(1, 0), TileAt(2, 0), tileSize)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(1, 0), tileSize);
            break;
        case "bg_watertiles_2":
            // Hey I heard you like to swap and copy tiles
            destination = source
                .SwapAndCopyTiles(TileAt(11, 0), TileAt(12, 0), tileSize)
                .SwapAndCopyTiles(TileAt(10, 0), TileAt(11, 0), tileSize)
                .SwapAndCopyTiles(TileAt(9, 0), TileAt(10, 0), tileSize)
                .SwapAndCopyTiles(TileAt(8, 0), TileAt(9, 0), tileSize)
                .SwapAndCopyTiles(TileAt(7, 0), TileAt(8, 0), tileSize)
                .SwapAndCopyTiles(TileAt(6, 0), TileAt(7, 0), tileSize)
                .SwapAndCopyTiles(TileAt(5, 0), TileAt(6, 0), tileSize)
                .SwapAndCopyTiles(TileAt(4, 0), TileAt(5, 0), tileSize)
                .SwapAndCopyTiles(TileAt(3, 0), TileAt(4, 0), tileSize)
                .SwapAndCopyTiles(TileAt(2, 0), TileAt(3, 0), tileSize)
                .SwapAndCopyTiles(TileAt(1, 0), TileAt(2, 0), tileSize)
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(1, 0), tileSize);
            break;
        case "bg_watertiles_supplement":
            destination = source
                .SwapAndCopyTiles(TileAt(0, 0), TileAt(5, 0), tileSize);
            break;
    }
    
    if (destination != null)
    {
        destination.Save(imagePath);
        AddProgressParallel(1);
        return true;
    }
    return false;
}

static Bitmap PadToTileSize(this Bitmap source, int tileSize)
{
    if (source.Size.Width % tileSize == 0 && source.Size.Height % tileSize == 0)
        return source;

    int paddedWidth = (int)(Math.Ceiling(source.Size.Width / (float)tileSize) * tileSize);
    int paddedHeight = (int)(Math.Ceiling(source.Size.Height / (float)tileSize) * tileSize);

    Bitmap destination = new Bitmap(paddedWidth, paddedHeight);

    using (Graphics graphics = Graphics.FromImage(destination))
    {
        graphics.DrawImage(source, 0, 0);
    }

    return destination;
}

static Bitmap PadImage(this Bitmap source, int top, int right, int bottom, int left)
{
    Bitmap destination = new Bitmap(source.Size.Width + left + right, source.Size.Height + top + bottom);

    using (Graphics graphics = Graphics.FromImage(destination))
    {
        graphics.Clear(Color.Transparent);
    }

    using (Graphics graphics = Graphics.FromImage(destination))
    {
        graphics.DrawImage(source, left, top);
    }

    return destination;
}

static Bitmap SwapAndCopyTiles(this Bitmap source, (int X, int Y) first, (int X, int Y) second, int tileSize)
{
    Bitmap destination = new(source);

    using (Graphics graphics = Graphics.FromImage(destination))
    {
        graphics.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceCopy;
        graphics.DrawImage(source, new Rectangle(first.X, first.Y, tileSize, tileSize), new Rectangle(second.X, second.Y, tileSize, tileSize), GraphicsUnit.Pixel);
        graphics.DrawImage(source, new Rectangle(second.X, second.Y, tileSize, tileSize), new Rectangle(first.X, first.Y, tileSize, tileSize), GraphicsUnit.Pixel);
    }

    return destination;
}

static Bitmap ClearTile(this Bitmap source, (int X, int Y) position, int tileSize)
{
    Bitmap destination = new(source);

    for (int x = 0; x < tileSize; x++)
    {
        for (int y = 0; y < tileSize; y++)
        {
            destination.SetPixel(x, y, Color.Transparent);
        }
    }

    return destination;
}