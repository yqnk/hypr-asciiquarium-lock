#!/bin/zsh

# Default configuration path
swaylock_config=""

# Parse command line options
while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        -c)
            swaylock_config="$2"
            shift # past argument
            shift # past value
            ;;
        --config)
            swaylock_config="$2"
            shift
            shift
            ;;
        --classic)
            classic="--classic"
            shift
            ;;
        -t|--transparent)
            transparent="--transparent"
            shift
            ;;
        -s|--screensaver)
            screensaver="--screensaver"
            shift
            ;;
        -h|--help)
            help="--help"
            shift
            ;;
        -v|--version)
            version="--version"
            shift
            ;;
        *)    # unknown option
            extra_args+=("$1") # save it in an array for later
            shift
            ;;
    esac
done

# Check if swaylock config is provided
if [ -z "$swaylock_config" ]; then
    echo "Please specify the path to the swaylock config file using the --config option."
    exit 1
fi

# Check if swaylock config file exists
if [ ! -f "$swaylock_config" ]; then
    echo "swaylock config file not found at specified path: $swaylock_config"
    exit 1
fi

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
# Redirect swaylock so the fish dont break
$tte sh -c "swaylock --config \"$swaylock_config\" >/dev/null 2>&1 && hyprctl dispatch fullscreen && asciiquarium $classic $transparent $screensaver $help $version ${extra_args[@]}" zsh "$@" &
