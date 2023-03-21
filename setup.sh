#!/bin/bash
# Setup script, checks for dependencies, handles symlink creation

command -v identify >/dev/null || echo "Identify not found. Can be found in package 'imagemagick'"
command -v notify-send >/dev/null || echo "Notify-send not found. Can be found in package 'libnotify'"

lbin="$HOME/.local/bin"
mkdir -p "$HOME/.local/bin"
for executable in \
        feh feth feh_pl feh_del \
        feh_info feh_help dyn_papes rand_dbg; do
    ln -si "$PWD/$executable" "$lbin/$executable"
done

feh_config="$HOME/.config/feh"
ln -si "$PWD/keys"   "$feh_config/keys"
ln -si "$PWD/themes" "$feh_config/themes"
