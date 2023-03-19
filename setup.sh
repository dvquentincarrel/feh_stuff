#!/bin/bash
# Setup script, handles symlink creation
feh_config="~/.config/feh"
ln -si $PWD/keys $feh_config/keys
ln -si $PWD/themes $feh_config/themes
