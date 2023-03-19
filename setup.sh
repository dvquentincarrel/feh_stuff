#!/bin/bash
# Setup script, checks for dependencies, handles symlink creation

command -v identify >/dev/null || echo "Identify not found. Can be found in package 'imagemagick'"
command -v notify-send >/dev/null || echo "Notify-send not found. Can be found in package 'libnotify'"

lbin="$HOME/.local/bin"
mkdir -p "$HOME/.local/bin"
ln -si "$PWD/feh"       "$lbin/feh"
ln -si "$PWD/feh_del"   "$lbin/feh_del"
ln -si "$PWD/feh_info"  "$lbin/feh_info" 
ln -si "$PWD/feh_help"  "$lbin/feh_help"
ln -si "$PWD/dyn_papes" "$lbin/dyn_papes"
ln -si "$PWD/rand_dbg"  "$lbin/rand_dbg"

feh_config="$HOME/.config/feh"
ln -si "$PWD/keys"   "$feh_config/keys"
ln -si "$PWD/themes" "$feh_config/themes"
