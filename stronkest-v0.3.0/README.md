# stronkest-v0.3.0

This directory was created using `npx @dungeonmans-mod-tools/cli init`.

## Next steps

Add json files to add monsters, dungeons, etc inside the respective subdirectories of the `src/` directory.

If supported by your editor you should get intellisense, type hinting, and hover-over-documentation, too. Support may vary by IDE. We have set up the schemas for use in VS Code by default.

> Pro tip: If you use a different editor, you can find the Dungeonmans JSON schemas inside `.vscode/settings.json#json.schemas` or regenerate them with `npx @dungeonmans-mod-tools/cli schemas --editor other`. For IntelliJ, see [their docs](https://www.jetbrains.com/help/idea/json.html#ws_json_schema_add_custom) on using Custom JSON Schemas. (Disclaimer: The json schemas that enable IDE support are Work In Progress.)

If you prefer to write entityDefs in plain text instead, you can do that as well by writing them as `.txt` files inside the subdirectories of `src/`. Be aware that there are no guard rails though.

Code written in csharp can be added to the `src/code` directory. Check the [official Tutorial Mod](https://github.com/jim-adventureprogames/dmans-tutorial-mod/tree/main) for examples.

Images must be `.png` files and go into `src/textures`.

Once you want to test your mod in the game, you build your mod into formats that Dungeonmans understands with

```sh
# clean the build dir
rm -r dist

# build the mod
npx @dungeonmans-mod-tools/cli build src dist/stronkest-v-0-3-0
```

> Details: `.txt`, `.png`, and `.cs` files will be copied over as-is. `.json` files will be turned into entitydefs inside `.txt` files. Notable exceptions being JSON files in `plotdata/` and `overworldgenerationdata/` which are written to JSON because Dungeonmans supports JSON natively in these two cases.

Additional tooling is available to speed up mod development:

```sh
# validate entity references
npx @dungeonmans-mod-tools/cli validate-refs src
```

> Entity References: Refs help you avoid typos when you need to reference one entity from another. For example, a monster entity requires a sprite entity, so the monster has a property `"sprite": "mymod_sprite_mymonster"`, where `mymod_sprite_mymonster` must be the name of a sprite entity in `spritedata/`. To enable validation on such cases, you can wrap the entity name in `@ref(..)`. So in this example you would write `"sprite": "@ref(mymod_sprite_mymonster)"`. The `@ref(..)` will be removed on `build` so only the actual entity name `mymod_sprite_mymonster` remains in the build output. This even works for substrings, for example `1,100,2,@ref(sp_so_many_bites)`, and inside property keys.

Next, copy the `dist\stronkest-v-0-3-0` directory as-is to the Dungeonmans mod folder `c:\users\[you]\appdata\roaming\Dungeonmans\modcontent\mods`. 

Finally, start the game, select it in the mod loader popup, and enjoy Dungeonmans by crushing some of your own monster creations and everything else you have created.

## Useful Links

- [Modding Dungeonmans docs](https://dungeonmans.fandom.com/wiki/Mod_Packages)
- [Example Mod by the Dungeonmans Creator](https://github.com/jim-adventureprogames/dmans-tutorial-mod/tree/main)
- [Dungeonmans Discord](https://discord.gg/stremf)
- [Best Practices for using Dungeonmans Mod Tools](https://github.com/mkraenz/dungeonmans-mod-tools/blob/main/Learnings-modding-dungeonmans.md)
- [Dungeonmans Mod Tools Github](https://github.com/mkraenz/dungeonmans-modding-tools)
- [CLI Docs on NPM](https://www.npmjs.com/package/@dungeonmans-mod-tools/cli)
