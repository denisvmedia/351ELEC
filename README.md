# 351ELEC

An open source firmware for the Anbernic RG351P.

This is a fork of 351ELEC that includes features and changes that are not accepted by author of the main repository.

## Features

* A 64bit Firmware optimized for the RK3326 CPU and 320x480 display found in the RG351P.
* Fully Open Source with a wonderful community of users and contributors.
* An up-to-date and fresh user interface
* Optimized defaults allowing you to pick up and play
* A FAT32 games partition easilly accessible from Linux, Windows and MacOS.

351ELEC is a fork of [EmuELEC](https://github.com/EmuELEC/EmuELEC) which is based on [CoreELEC](https://github.com/CoreELEC/CoreELEC), [Lakka](https://github.com/libretro/Lakka-LibreELEC), and [Batocera](https://github.com/batocera-linux/batocera.linux).  It is intended for use only on the RG351P and is not compatible with other devices.

## Features that are not included in the main repository

* Hook to run before the system starts (can be used for custom mount scripts). Just create `hook.sh` with your commands in the root of the first flash partition.
* Original hotkeys in Retroarch that were on the stock firmware (the ones introduced in the original repo are not usable, e.g. select-up/down is a no-go hotkey).

## Installation

351ELEC minimally requires an 8GB MicroSD, however the experience will be limited.  For an optimal configuration 32GB or more is recommended.

To install the most recent stable release, start by downloading the latest 351ELEC-RG351P.aarch64-{version}.img.gz from the Releases section.

* Decompress the image
* Write the image to a microSD using your favorite image writer

On the first boot, 351ELEC will expand the storage and games partitions and then reboot to configure the firmware.  It's normal for this process to take a minute or two.  After setting up for the first time, subsequent boots will be much faster.

For access to nightly builds with the most recent bleeding edge changes, visit #releases-nightly on discord.

## Getting Help

Many frequently asked questions are covered in our [WIKI](https://github.com/fewtarius/351ELEC/wiki/Getting-to-Know-351ELEC).  If you have general questions or if you need help, join us on Discord: https://discord.gg/bmXtCt88Tz

For bug reports and feature requests, use one of the templates on the issues tab.  The more information you provide, the easier it will be to assist.  Please note that issues opened without using a form will be closed.  Please do not use the issue tracker for technical support, or your issue will be closed.

## Building from Source
Building 351ELEC from source is a fairly simple process.  It is recommended to have a minimum of 4 cores, 16GB of RAM, and an SSD with 200GB of free space.  The build environment used to develop these steps uses Ubuntu 20.04, your mileage may vary when building on other distributions.

```
sudo apt update && sudo apt upgrade

sudo apt install gcc make git unzip wget xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev libfreetype6-dev libcurl4-openssl-dev rapidjson-dev libasound2-dev libgl1-mesa-dev build-essential libboost-all-dev cmake fonts-droid-fallback libvlc-dev libvlccore-dev vlc-bin texinfo premake4 golang libssl-dev curl patchelf xmlstarlet patchutils gawk gperf xfonts-utils default-jre python xsltproc libjson-perl lzop libncurses5-dev device-tree-compiler u-boot-tools rsync p7zip unrar

git clone https://github.com/fewtarius/351ELEC.git 351ELEC  

cd 351ELEC

make clean

make world
```

The make world process will build a 32bit and 64bit userland and generate a 64bit image which will be located in 351ELEC/release.  Follow the installation steps to write your image to a microSD.

## License

351ELEC is a fork of EmuELEC which is based on CoreELEC which in turn is licensed under the GPLv2 (and GPLv2-or-later), all original files created by the 351ELEC team are licensed as GPLv2-or-later and marked as such.

This firmware includes many non-commercial emulators/libraries/cores/binaries and as such, **it cannot be sold, bundled, offered, included, or anything similar, in any commercial product/application including but not limited to: Android Devices, Smart-TVs, TV-boxes, Hand-held Devices, Computers, SBCs, or anything else that can run 351ELEC.** with those emulators/libraries/cores/binaries included.

As 351ELEC includes code from many upstream projects it includes many copyright owners. 351ELEC makes NO claim of copyright on any upstream code. Patches to upstream code have the same license as the upstream project, unless specified otherwise. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the 351ELEC project (in any form) is licensed under GPLv2-or-later. You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.

## Branding

All 351ELEC related logos, videos, images and branding in general are the sole property of 351ELEC and they are all Copyrighted by the 351ELEC team and are not to be included in any commercial application whatsoever without the proper authorization, (yes, this includes 351ELEC bundled with ROMS for donations!).

You are however granted permission to include/modify them in your forks/projects as long as they are completely open-source, freely available (as in [but not limited to] not under a bunch of "click this sponsored ad to get the link!"), and do not infringe on any copyright laws, even if you receive donations for such project (we are not against donations for honest people!), we only ask that you give us the proper credit and if possible a link to this repo.
