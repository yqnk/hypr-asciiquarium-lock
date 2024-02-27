# wl-asciiquarium-lock
Quick shell script is designed to lock your screen using SwayLock and display an ASCII aquarium in the background while your screen is locked.

## Dependencies

Before using this script, make sure the following dependencies are installed on your system:

- `asciiquarium`: Used to display the ASCII aquarium.
- `swaylock`: Used to lock the screen.
- `hyprctl`: Used to send a fullscreen command.

If any of these dependencies are not installed, the script will display an appropriate error message and exit.

## Install

### Raw install

```bash
git clone git@github.com:yqnk/wl-asciiquarium-lock.git
cd wl-asciiquarium-lock
chmod +x wl-asciiquarium-lock.sh
```
Then to execute the script:
```bash
./wl-asciiquarium-lock.sh
```

## Usage

```bash
wl-asciiquarium-lock --config <file> [-OPTIONS]
```

### OPTIONS
Use anything as an option, such as :
- `-s` to enable screensaver,
- `-t` to make the background transparent if you are using [asciiquarium-transparent-git](https://aur.archlinux.org/packages/asciiquarium-transparent-git),
- ...
