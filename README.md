# chrome-remote-desktop-deb-to-rpm
Converts the Debian package for Chrome Remote Desktop to an RPM since Google doesn't supply one.

Requires `alien`, which can be acquired with the following command:
```
sudo dnf install alien
```

Also requires the Debian package to be in the same folder as the script itself, which can be acquired [here](https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb).

---

Alternatively, one can quickly install Chrome Remote Desktop as an RPM with the following command:
```
curl -sSL https://raw.githubusercontent.com/CreatorAndrew/chrome-remote-desktop-deb-to-rpm/refs/heads/main/install-chrome-remote-desktop-as-rpm.sh | bash
```
