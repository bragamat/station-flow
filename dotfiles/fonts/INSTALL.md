### Fonts

Here are the instructions on how to install the following fonts with ligatures:

* Fira Code
* Cascadia Code
* JetBrains Mono
* Victor Mono

#### Visual Studio Code

1. Go to `View -> Command Palette` or press `Ctrl+Shift+P`
2. Type `Preferences: Open Settings (JSON)` and paste:

```
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```

#### Sublime Text

1. Go to `Preferences -> Settings` and paste:

```!
"font_face": "Fira Code",
"font_options":
[
	"subpixel_antialias"
],
```

#### JetBrains IDEs

1. Enable in `Settings -> Editor -> Color Scheme -> Color Scheme Font -> Enable Font Ligatures`
2. Select font as "Primary font" under `Settings -> Editor -> Color Scheme -> Color Scheme Font`