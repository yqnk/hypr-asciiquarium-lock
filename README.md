# wl-asciiquarium-lock
Quick shell script is designed to lock your screen using SwayLock and display an ASCII aquarium in the background while your screen is locked. It uses the user's detected terminal to execute the necessary commands.

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
