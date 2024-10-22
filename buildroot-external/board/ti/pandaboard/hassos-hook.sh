#!/bin/bash
# shellcheck disable=SC2155

function hassos_pre_image() {
    local BOOT_DATA="$(path_boot_dir)"

    # Copy MLO first for OMAP bootROM
    cp "${BINARIES_DIR}/MLO" "${BOOT_DATA}/"
    cp "${BINARIES_DIR}/u-boot.img" "${BOOT_DATA}/"

    cp "${BINARIES_DIR}/boot.scr" "${BOOT_DATA}/"
    cp "${BINARIES_DIR}"/*.dtb "${BOOT_DATA}/"

    cp "${BOARD_DIR}/cmdline.txt" "${BOOT_DATA}/cmdline.txt"
}


function hassos_post_image() {
    convert_disk_image_xz
}
