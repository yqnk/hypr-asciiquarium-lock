# hypr-asciiquarium-lock
Quick shell script is designed to lock your screen using SwayLock and display an ASCII aquarium in the background while your screen is locked.

## Dependencies

Before using this script, make sure the following dependencies are installed on your system:

- `asciiquarium` or `asciiquarium-transparent-git`: Used to display the ASCII aquarium.
- `swaylock`: Used to lock the screen.
- `hyprctl`: Used to send a fullscreen command (installed with Hyprland).

If any of these dependencies are not installed, the script will display an appropriate error message and exit.

## Manual Install

```bash
git clone git@github.com:yqnk/hypr-asciiquarium-lock.git
cd hypr-asciiquarium-lock
makepkg -si
```

## Usage

```bash
hypr-asciiquarium-lock --config <file> [-OPTIONS]
```

### Options

#### Necessary

Use `--config <file>` to specify where swaylock config file is.

#### Optional

Use anything as an option, such as :
- `-s` to enable screensaver,
- `-t` to make the background transparent if you are using [asciiquarium-transparent-git](https://aur.archlinux.org/packages/asciiquarium-transparent-git),
- ...
Refer to [asciiquarium's official repository](https://github.com/cmatsuoka/asciiquarium) for more information on existing options.

### Uninstall

```bash
paru -Rns hypr-asciiquarium-lock
```
