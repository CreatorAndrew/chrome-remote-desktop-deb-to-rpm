#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $CURRENT_DIR
PKG_NAME=$(sudo alien --to-rpm --generate --scripts --fixperms ./chrome-remote-desktop_current_amd64.deb)
PKG_NAME="${PKG_NAME/Directory /""}"
PKG_NAME="${PKG_NAME/ prepared./""}"
cd $PKG_NAME
sudo sed -i "/^%dir \"\//d" ./$PKG_NAME-2.spec
rpmbuild --target=x86_64 --buildroot $CURRENT_DIR/$PKG_NAME -bb $PKG_NAME-2.spec > /dev/null
cd ..
sudo rm -rf $PKG_NAME
