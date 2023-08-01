#!/usr/bin/env bash

PKG_FILE=""
output="${1}"

move_to_nested "${output}" "${output}/usr/lib/opentabletdriver"

cp -R "${GENERIC_FILES}"/* "${output}/"
generate_rules "${output}/usr/lib/udev/rules.d/90-opentabletdriver.rules"
generate_desktop_file "${output}/usr/share/applications/opentabletdriver.desktop"
copy_pixmap_assets "${output}/usr/share/pixmaps"
