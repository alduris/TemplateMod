# Rain World code mod template

## Usage
Use this template on GitHub or just [download the code](https://github.com/alduris/TemplateMod/archive/refs/heads/master.zip), whichever is easiest.

If you chose the latter it's recommended you delete the hidden `.github` folder before uploading to github.

Rename `src/TestMod.csproj`, then edit `mod/modinfo.json` and `src/Plugin.cs` to customize your mod.

See [the modding wiki](https://rainworldmodding.miraheze.org/wiki/Mod_Directories) for `modinfo.json` documentation.

To update your mod to work in future updates, replace `PUBLIC-Assembly-CSharp.dll` and `HOOKS-Assembly-CSharp.dll` with the equivalents found in `Rain World/BepInEx/utils` and `Rain World/BepInEx/plugins` as well as `Assembly-CSharp-firstpass.dll` found in `Rain World/RainWorld_Data/Managed`.

If you wish to add any other reference .dll files, copy them into the `lib` folder and strip them (using a tool such as [NStrip](https://github.com/bbepis/NStrip)).

## License
This template is licensed under CC0, the full text of which can be found here: https://creativecommons.org/public-domain/cc0/

In a nutshell, this means:
- You can do pretty much whatever you want with this template
- I am not responsible for what you do with this template
- There are no warranties expressed or implied

You do not have to license your code under CC0 though! (Though it would be cool if you did.) Feel free to license your code however you wish, or not at all.

**DISCLAIMER**: Any and all reference .dll files included (in the `lib` folder) are NOT covered under CC0! They are protected by copyright under their original owners. The actual code in the .dll files has been stripped so they serve no purpose other than for compiler reference (hopefully alleviating most legal issues this would otherwise cause), but this is expected to be upheld by you, the person using this template! Any reference .dlls you may add should be stripped before pushing to any public repository! And if it is possible to get code from Nuget instead, I recommend you do that instead of adding the dll here.
