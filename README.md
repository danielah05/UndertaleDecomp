# Undertale-DC
- PLEASE NOTE THIS IS STILL A WORK IN PROGRESS! -<br>
A decompilation of the latest version of UNDERTALE for the Nintendo Switch ported to the latest Gamemaker Studio 2 with many added toggleable enhancements<br>
(If you are toby fox please hmu I'd love to talk :3)
### Main Contributors
Vultumast - Project Lead - Code Cleanup, Bug Fixing, Some Sorting<br>
[Daniela](https://lethallava.land/@daniela) - Main Project assistant - Code Cleanup, Bug Fixing, Most Sorting, Most Testing

### Asset Extraction Script Creator
[Marioalexsan](https://github.com/Marioalexsan)

## Contact
Discord: ``vultumast``<br>
Email: ``vultumast@gmail.com``<br>

[Discord](https://discord.gg/sfQmY89m9n)<br>
## Do you have permission to share this?
We originally emailed the fangamer UNDERTALE contact for permission, but due to some misunderstanding on both sides, we had to take down this project.<br>
HOWEVER: after some more communication, fangamer did allow us to make this a public project as long as it does not bundle any UNDERTALE-specific assets.
```
Thanks for your coorperation! You could put up a decomp on the following conditions:

- It would need to be a new repository so that the previous upload is no longer in the git history
- All UNDERTALE-specific assets (graphics, music, etc) would need to be removed from the codebase
- Assets can't be distributed with either the source code itself, or included in any compiled executables, etc.

Developers who own a copy of the game should then be able to import the assets from their copy, but those who don't already have one wouldn't have downloaded a functional and complete copy of UNDERTALE.
```
(If you represent Toby Fox, or any assets in this repository and need to contact me, please do so at vultumast@gmail.com)

## How do I use this?
1. You will need to own UNDERTALE on the Nintendo Switch, dump your OWN rom, and extract the RomFS.<br>
2. Clone the repo.
3. Download the latest version of [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool) (GUI, NOT CLI), you will need it to run the asset extractor script.<br>
4. In the place you extracted the games RomFS to, locate the ``game.win`` file and load it with UndertaleModTool.<br>
5. After loading the file, in UndertaleModTool, go to ``Scripts -> Run other script...`` and load the ``UndertaleDecompAssetImport.csx`` script that can be found in the ``utils\asset_importer`` folder.
6. Once the script is done running, just simply open ``NXTale.yyp`` inside of Gamemaker Studio 2 (latest!)

## Special Thanks
[UnderminersTeam](https://github.com/UnderminersTeam) - Made [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)<br>
MrPorkchop - Made the Icon<br>
[Ally](https://twitter.com/chromadeline) - Made the Decomp Menu Music<br>
[TaiAurori](https://devkats.club) - Android Port Testing<br>
[Invoxiplaygames](https://ipg.pw/) - MacOS Port Testing<br>
[Clovercorp](https://twitter.com/silverparasoul) - Came up with the Name 

## PR Helpers
[Zyle](https://zyle.dev/)<br>
[Marioalexsan](https://github.com/Marioalexsan)
