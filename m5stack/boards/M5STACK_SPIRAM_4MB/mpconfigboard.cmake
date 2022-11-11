set(SDKCONFIG_DEFAULTS
    ./boards/sdkconfig.base
    ./boards/sdkconfig.flash_4mb
    ./boards/sdkconfig.ble
    ./boards/sdkconfig.spiram
    ./boards/sdkconfig.240mhz
    ./boards/sdkconfig.disable_iram
)

# If not enable LVGL, ignore this...
set(LV_CFLAGS -DLV_COLOR_DEPTH=16 -DLV_COLOR_16_SWAP=0)

if(NOT MICROPY_FROZEN_MANIFEST)
    set(MICROPY_FROZEN_MANIFEST ${CMAKE_SOURCE_DIR}/boards/manifest.py)
endif()
