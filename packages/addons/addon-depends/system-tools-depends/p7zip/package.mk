# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="p7zip"
PKG_VERSION="17.03"
PKG_SHA256="bb4b9b21584c0e076e0b4b2705af0dbe7ac19d378aa7f09a79da33a5b3293187"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/jinfeihan57/p7zip"
PKG_URL="https://github.com/jinfeihan57/p7zip/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="gcc:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="p7zip is a port of 7za.exe for POSIX systems like Unix."
PKG_TOOLCHAIN="manual"

make_host() {
    make CXX=$CXX CC=$CC 7za
}

make_target() {
    make CXX=$CXX CC=$CC 7z 7za 7zr
}

makeinstall_host() {
    mkdir -p $TOOLCHAIN/bin
    cp bin/7za $TOOLCHAIN/bin
}

makeinstall_target() {
    mkdir -p $INSTALL/usr/bin
    cp bin/7zr $INSTALL/usr/bin
    
    mkdir -p $INSTALL/usr/config/emuelec/scripts/batocera
    ln -sf /usr/bin/unzip $INSTALL/usr/config/emuelec/scripts/batocera/unzip
    ln -sf /usr/bin/7zr $INSTALL/usr/config/emuelec/scripts/batocera/7zr
}
