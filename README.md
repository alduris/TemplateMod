# Rain World code mod template

## Usage
Use this template on GitHub or just [download the code](https://github.com/alduris/TemplateMod/archive/refs/heads/master.zip), whichever is easiest.

Rename `src/TestMod.csproj`, then edit `mod/modinfo.json` and `src/Plugin.cs` to customize your mod.

See [the modding wiki](https://rainworldmodding.miraheze.org/wiki/Mod_Directories) for `modinfo.json` documentation.

You will need to set up an environmental variable, `RainWorldDir`, containing the full path to your Rain World installation without a slash as the last character (as an example, for me, it is `D:/SteamLibrary/steamapps/common/Rain World`). If you are unsure how to do this, on Windows, go to the search icon in your taskbar and type "environmental variables", and an option akin to "Edit the system environmental variables" should pop up. Open that, click the "Environmental Variables" button at the bottom, then add a New entry under the User variables with the aforementioned Variable and Value.

If you wish to add any other reference .dll files, copy them into the `lib` folder and strip them (using a tool such as [NStrip](https://github.com/bbepis/NStrip)).

## License
This template is licensed under CC0, the full text of which can be found here: https://creativecommons.org/public-domain/cc0/

In a nutshell, this means:
- You can do pretty much whatever you want with this template
- I am not responsible for what you do with this template
- There are no warranties expressed or implied

You do not have to license your code under CC0 though! (Though it would be cool if you did.) Feel free to license your code however you wish, or not at all.