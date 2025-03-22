# swiftkeybo

Raspberry pi pico keyboard

[warning] this is experimental.


* Keyboard Maintainer: [yochidros](https://github.com/yochidros)

## build
    mkdir keyboard && cd keyboard
    git clone https://github.com/yochidros/swiftkeybo.git swiftkeybo
    git clone https://github.com/qmk/qmk_firmware.git --depth 1 --recurse-submodules --shallow-submodules -b 0.22.14 qmk
    cd qmk
    ln -s ../swiftkeybo keyboards/swiftkeybo
    cd keyboards/swiftkeybo
    make
    cd ../..
    make SKIP_GIT=yes swiftkeybo:default

Flashing example for this keyboard:

    make swiftkeybo:default:flash

