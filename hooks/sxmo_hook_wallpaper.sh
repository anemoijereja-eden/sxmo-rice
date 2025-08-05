#!/bin/sh -e
# configversion: 079abfa1fcb3f0824079dad978ab9f69
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright 2022 Sxmo Contributors

# shellcheck source=scripts/core/sxmo_common.sh
. sxmo_common.sh

# This script is executed once, and must output the wallpaper to display

installed_wallpapers() {
	echo ~/.config/sxmo/background.jpg
}

sxmo_wallpaper() {
	xdg_data_path sxmo/background.jpg
}

all_wallpapers() {
	installed_wallpapers
	sxmo_wallpaper
}

all_wallpapers | head -n1
