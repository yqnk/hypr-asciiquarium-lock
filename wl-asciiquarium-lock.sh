#!/bin/zsh

# Check for dependencies
if ! command -v asciiquarium &> /dev/null; then
    echo "Command not found: 'asciiquarium'"
    exit 1
fi

if ! command -v swaylock &> /dev/null; then
  echo "Command not found: 'swaylock'"
  exit 1
fi

if ! command -v hyprctl &> /dev/null; then
  echo "Command not found: 'hyprctl'"
  exit 1
fi

# Run kitty and lock
if [[ "$TERM" == "xterm-kitty" ]]; then
  tte="kitty"
elif [[ "$TERM" == "gnome-terminal" ]]; then
  tte="gnome-terminal"
elif [[ "$TERM" == "konsole" ]]; then
  tte="konsole"
elif [[ "$TERM" == "terminator" ]]; then
  tte="terminator"
elif [[ "$TERM" == "xterm" ]]; then
  tte="xterm"
elif [[ "$TERM" == "alacritty" ]]; then
  tte="alacritty"
else
  echo "Terminal not supported :("
  exit 1
fi

# Run the terminal and commands in the background
$tte sh -c "swaylock --config ~/.config/swaylock/config && hyprctl dispatch fullscreen && asciiquarium \"\$@\"" zsh "$@" &
