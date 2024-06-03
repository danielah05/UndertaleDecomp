# List of Enhancements
This page exists to list all of the added Enhancements added to the Main branch of the Decomp.<br>
All of these changes were added to enhance both the modding experience, and playing experience of the game.<br>
If you are not a fan of these added changes, we recommend using the [Vanilla](https://github.com/danielah05/UndertaleDecomp/tree/vanilla) branch instead.

## Enhancements
- Volume Sliders: Let you adjust the volume of the games Music, SoundFX, and Master volume.
- In-game Console: A built in custom console with a bunch of useful commands. Type in `help` for a list of commands!
- Fixed Input Latency (Toggleable): Fixes input issues that are typically a huge problem in newer versions of the game.
- Wrist Protector (Toggleable): A simple Deltarune like Wrist Protector, hold C or CTRL to automatically skip dialog.
- Console Dog Shrines (Toggleable): Option to enable the console exclusive (PS4, Switch) Dog Shrines, with the bonus option of being able to do both in a single run.
- PS4 Trophies (Toggleable): Restores the PS4 exclusive Trophies, adding a custom UI for whenever you unlock one of them.
- Forced "So Sorry!" Event (Toggleable): Makes it so you can always do the "So Sorry!" Battle on any day.
- Remove ! Icon Randomness (Toggleable): Disables the random delay the ! Icon has before a Battle starts.
- ! Icon Timer Override (Adjustable): Allows adjusting the ! Icon that appears before a Battle starts from a number between 15-20 frames.
- Text Data exported as JSON: All of the games text data has been exported to a json file, kinda like Deltarune. HEAVILY improves [compile times](https://github.com/danielah05/UndertaleDecomp?tab=enhancements-ov-file#compile-times), making testing changes much faster.
- Rooms redone to use GMS2s tile system: Every room in the game was fully redone by hand to use the new GMS2 tile system, this heavily decreased the projects file size and improved [compile times](https://github.com/danielah05/UndertaleDecomp?tab=enhancements-ov-file#compile-times). This also fixed some issues in Ruins.

## Restored Features
- Restore SoundFX Panning (Toggleable): Only really used in one area of the game, but readds sound panning to parts of the game that were supposed to have them.
- Demo Heart Fracture Delay (Toggleable): Restores the old delay the Heart Fracture animation was supposed to have before going to the Game Over screen, used to be present in the Demo of Undertale.

## Bug Fixes
These are all bug fixes added to the project to improve gameplay.<br>
All of these can be disabled by either enabling `Vanilla Mode` in the Decomp Settings, or by using the [Vanilla](https://github.com/danielah05/UndertaleDecomp/tree/vanilla) branch.

- Fix Snowdin Genocide Music: In Snowdin in the Genocide route, the Musics pitch would randomly reset, this was fixed with some extra code.
- Fix Temmie Armor Death Price: The Temmie Armor is supposed to be able to go to the price 500G after having died 30 times, due to a bug in the code the price can only go down to 750G, this was fixed.
- Fix Switch Exclusive Last Elevator Warps: In the Last Elevator (also known as Long Elevator), you can simply just walk in and out the Elevator to warp between areas, this seemingly was an accidental left over from debugging the game. This was fixed.

## Compile Times
Compile times have been HEAVILY improved on the Main branch, below is a comparison between the Main branch and the Vanilla branch.<br>
(Compile times may be different depending on your PC setup.)

Branch | First Compile | Second Compile
--------|--------
[main](https://github.com/danielah05/UndertaleDecomp/tree/main) | 1m32s | 44s
[vanilla](https://github.com/danielah05/UndertaleDecomp/tree/vanilla) | 4m50s | 3m45s
