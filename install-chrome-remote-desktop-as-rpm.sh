#!/bin/bash
sudo dnf install -y alien
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $CURRENT_DIR
curl https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb -O
PKG_NAME=$(sudo alien -cgr chrome-remote-desktop_current_amd64.deb)
PKG_NAME=${PKG_NAME/Directory /""}
PKG_NAME=${PKG_NAME/ prepared./""}
rm chrome-remote-desktop_current_amd64.deb
cd $PKG_NAME
sudo sed -i "/^%dir \"\//d" $PKG_NAME-2.spec
# Remove lines that take ownership of directories; causes conflicts if they are left in
rpmbuild --target=x86_64 --buildroot $CURRENT_DIR/$PKG_NAME -bb $PKG_NAME-2.spec > /dev/null
cd ..
sudo rm -rf $PKG_NAME
sudo dnf install -y $PKG_NAME-2.x86_64.rpm
rm $PKG_NAME-2.x86_64.rpm
