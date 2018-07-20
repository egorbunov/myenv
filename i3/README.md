# I3 configuration

## Display backlight

1. Tool: https://gitlab.com/wavexx/acpilight
    - During `make install` new rule is installed to `/etc/udev/rule.d` gaining permissions for 
      reading acpi brightness (in `/sys/class/...`) for users in a `video` group, so don't forget
      to put yourself in that group:
        
            sudo usermod -a -G video eg

## Dmenu

Instead of `dmenu` it seems to better use [j4-menu-desktop](https://github.com/enkore/j4-dmenu-desktop).

```bash
sudo apt install j4-dmenu-desktop
```

And add to i3 config:

```
bindsym $mod+d exec j4-dmenu-desktop
```