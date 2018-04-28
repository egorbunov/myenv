# Gnome settings

* Add this to `~/.config/gtk-3.0/gtk.css` file to make heihgt of the tabs in gnome-terminal small:

```css
/* Decrease the tabs bar height in gnome-terminal
 * See:
 * https://stackoverflow.com/questions/36869701/decrease-the-tabs-bar-height-in-gnome-terminal
 */

terminal-window notebook > header.top button {
  padding: 0 0 0 0;
  background-image: none;
  border: 0;
}
terminal-window notebook > header.top > tabs > tab {
  margin: 0 0 0 0;
  padding: 0 0 0 0;
}
terminal-window notebook > header.top > tabs > tab label {
  padding: 0 0 0 0;
  margin: 0 0 0 0;
}
```

* Gnome extention: *Workspace Grid*. To change shortcuts used for switching/moving workspaces do:

```
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Shift><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Shift><Super>Left']"
```

That is also possible to `get` current keybindings with `gsettings` command.

