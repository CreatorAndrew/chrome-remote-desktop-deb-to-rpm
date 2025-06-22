# Chrome Remote Desktop RPM Maker/Installer
Converts the Debian package for Chrome Remote Desktop to an RPM since Google doesn't supply one. Also has a quick option to simply install Chrome Remote Desktop as an RPM without any additional input from the user.

## Quick Install (Simple)
One can quickly install Chrome Remote Desktop as an RPM with the following command:
```
curl -sSL https://raw.githubusercontent.com/CreatorAndrew/chrome-remote-desktop-deb-to-rpm/refs/heads/main/install-chrome-remote-desktop-as-rpm.sh | bash
```
---
## Conversion from Debian package to RPM (Intermediate)
Install `alien`, which can be acquired with the following command:
```
sudo dnf install alien
```

Clone the repository with the following command:
```
git clone https://github.com/CreatorAndrew/chrome-remote-desktop-deb-to-rpm.git
```

Grab the Debian package for Chrome Remote Desktop, which needs to be in the same folder as the script itself. That can be acquired [here](https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb).

Finally, run the following command:
```
./chrome-remote-desktop-deb-to-rpm.sh
```
