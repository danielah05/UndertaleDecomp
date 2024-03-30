When importing assets, it might be useful to clean the project of build outputs and previous assets:

```
git clean -dfX .
```

Then go to `%appdata%/GameMakerStudio2/Cache/GMS2CACHE` and remove any folders that have `NXTale` in the name.

After that, re-add any assets that need to be imported manually to the `external_assets` folder.
