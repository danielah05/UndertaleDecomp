# Undertale-DC
\- PLEASE NOTE THIS IS STILL A WORK IN PROGRESS! -<br>
A decompilation of the latest version of UNDERTALE for the Xbox One ported to the latest Gamemaker Studio 2 Beta with many added toggleable enhancements<br>

## Recommended Branches
Branch | Description
--------|--------
[main](https://github.com/danielah05/UndertaleDecomp/tree/main) | Main branch with many enhancements and bug fixes, this is the most recommended one for a stable and improved modding/playing experience. [View a list of enhancements here!](https://github.com/danielah05/UndertaleDecomp/blob/main/ENHANCEMENTS.md)
[vanilla](https://github.com/danielah05/UndertaleDecomp/tree/vanilla) | Version of the main branch but with any of the decomp exclusive features and enhancements removed. Recommended for a as vanilla as possible UNDERTALE modding experience.

### Main Contributors
[Daniela](https://bsky.app/profile/daniela.lol) - Project Lead - Code Cleanup, Bug Fixing, Most Sorting, Most Testing<br>
Vultumast - Past Contibutor/Original Project Lead - Code Cleanup, Bug Fixing, Some Sorting

### Asset Extraction Script Creator
[Marioalexsan](https://github.com/Marioalexsan)

## Contact
Discord: ``studiorender_client.so``<br>
Bluesky: ``daniela.lol``

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
1. You will need to own a copy of UNDERTALE, can be any version but the XBOX version is HIGHLY recommended!<br>
2. Clone the repo.
3. Download the latest version of [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool) (GUI, NOT CLI), you will need it to run the asset extractor script.<br>
4. In the place you extracted the games data to, locate the ``data.win`` or ``game.win`` file and load it with UndertaleModTool.<br>
5. After loading the file, in UndertaleModTool, go to ``Scripts -> Run other script...`` and load the ``UndertaleDecompAssetImport.csx`` script that can be found in the ``utils\asset_importer`` folder.<br>
6. Once the script is done running, just simply open ``NXTale.yyp`` inside of Gamemaker Studio 2 (latest beta!)

## Dependencies (Native Linux Build)
```libcurl-gnutls lib32-libcurl-gnutls lib32-libpulse lib32-alsa-lib lib32-openal lib32-glu lib32-openssl-1.0```

## How do I obtain the Xbox data?
Currently there is no easy guide on how to dump Xbox games and get the game data from them, so this is something you will need to look into yourself.<br>
Alternatively, we recommend using the Switch version of the game instead, as that is the closest you will get to the Xbox version.

## How do I obtain the Switch data?
This repo will not explain how to mod a Switch and how to make dumps from it. If you wanna look into that, here is a list of resources that could help:<br>
Modding your Switch: https://switch.hacks.guide/<br>
Dumping and Extracting Games: https://github.com/DarkMatterCore/nxdumptool/releases

## Can I use this without owning the Switch or Xbox version of UNDERTALE?
Yes! But it is HIGHLY recommended to use the Switch or Xbox version of the game.<br>
This should work on any version of the game that you own, however any Switch or Xbox exclusive content will be missing from the project and will instead be replaced with placeholder assets.<br>
Just run the ``UndertaleDecompAssetImport.csx`` script on whatever version of UNDERTALE you own, just like you would with a Switch or Xbox copy, and you still should be able to compile.

## Special Thanks
[UnderminersTeam](https://github.com/UnderminersTeam) - Made [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)<br>
MrPorkchop - Made the Icon<br>
[Julie578](https://twitter.com/chromadeline) - Made the Decomp Menu Music<br>
[TaiAurori](https://devkats.club) - Android Port Testing<br>
[Invoxiplaygames](https://ipg.pw/) - MacOS Port Testing<br>
[Clovercorp](https://twitter.com/silverparasoul) - Came up with the Name 

## PR Helpers
[Zyle](https://zyle.dev/)<br>
[Marioalexsan](https://github.com/Marioalexsan)<br>
[EphraimBane](https://github.com/EphraimBane)<br>
[Nyako](https://github.com/NyakoFox)<br>
[Sadie](https://github.com/zulc22)<br>
[AveryMadness](https://github.com/AveryMadness)
