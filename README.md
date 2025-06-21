# chrome-remote-desktop-deb-to-rpm
Converts the Debian package for Chrome Remote Desktop to an RPM since Google doesn't supply one.

Requires `alien`, which can be acquired by the following:

```
sudo dnf install alien
```

Also requires the Debian package to be in the same folder as the script itself. Can be acquired [here](https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb)

