# BAR Scenarios

A collection of custom scenarios for Beyond All Reason.


# How to download custom scenarios

Where Beyond All Reason stores game files depends on your operating system. Specifically, for Windows:

```
%LOCALAPPDATA%\Programs\Beyond-All-Reason\data
```

For Linux, you have the choice of either AppImage or Flatpak. For Flatpak:

```
~/.var/app/info.beyondallreason.bar/data
```

For AppImage:

```
~/.local/state/Beyond All Reason
```

All of them should have a folder called `LuaMenu`. Open the `LuaMenu` folder, you should see these folders:

```
Config
Images
```

Now, follow these steps:
1. Inside `LuaMenu` create a folder named `configs`.
2. Inside `configs` create a folder named `gameConfig`.
3. Inside `gameConfig` create a folder named `byar`.
4. Inside `byar` create a folder named `scenarios`.

The folder structure for `LuaMenu` should look like this:

```
LuaMenu
├── Config
├── Images
└── configs
    └── gameConfig
        └── byar
            └── scenarios
```

Place the scenario files inside the `scenarios` folder. All scenarios should come in pairs of a single `.lua` file coupled with a single `.jpg` image.

Restart the game to see changes. You will find the new scenarios in the Scenarios tab.