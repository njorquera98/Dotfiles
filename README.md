## Dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each folder is a stow package:

```bash
cd ~/.dotfiles && stow -t ~ <package>
```

### Packages

| Package | Contents | Platform |
|---|---|---|
| `aerospace` | [AeroSpace](https://github.com/nikitabobko/AeroSpace) tiling window manager | macOS |
| `nvim` | [LazyVim](https://github.com/LazyVim/LazyVim) config | macOS / Linux |
| `wezterm` | [WezTerm](https://github.com/wez/wezterm) terminal | macOS / Linux |
| `zellij` | [Zellij](https://github.com/zellij-org/zellij) multiplexer (config, layouts, plugins) | macOS / Linux |
| `zsh` | `.zshrc` with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) | macOS / Linux |
| `p10k` | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) prompt | macOS / Linux |
| `git` | `.gitconfig` | macOS / Linux |
| `i3wm` | i3 window manager, i3blocks and scripts | Linux |
| `rofi` | [Rofi](https://github.com/davatorium/rofi) themes and menus | Linux |

### AeroSpace

Use a **single macOS desktop** (Mission Control) and switch only with AeroSpace workspaces; multiple macOS desktops conflict with AeroSpace.

#### Workspaces

| Workspace | Apps |
|---|---|
| `1` | WhatsApp + Discord |
| `2` | Zen |
| `3` | Claude |
| `4` | Notion |
| `5` | Calendar |
| `6` | WezTerm |
| `7` | Firefox |
| `8` | Spotify / Apple Music |
| `P` | Presentation: a dedicated Zen window, placed on the first external monitor |

Finder, System Settings, Calculator, Preview, Activity Monitor, Archive Utility, Passwords, FaceTime, AnyDesk, GlobalProtect, Picture-in-Picture and **any app without a rule** open floating in the current workspace.

#### Shortcuts

| Keys | Action |
|---|---|
| `alt-1` … `alt-8`, `alt-p` | Go to workspace |
| `alt-shift-1` … `alt-shift-8`, `alt-shift-p` | Move window to workspace |
| `alt-tab` | Previous workspace |
| `alt-h/j/k/l` | Focus left / down / up / right |
| `alt-shift-h/j/k/l` | Move window |
| `alt-minus` / `alt-equal` | Shrink / grow |
| `alt-slash` / `alt-comma` | Tiles / accordion layout |
| `alt-shift-space` | Toggle floating / tiling |
| `alt-f`, `ctrl-alt-enter` | Fullscreen (maximize) |
| `ctrl-alt-left` / `ctrl-alt-right` | Left / right half (tiles floating windows first) |
| `ctrl-alt-p` | Go to `P` and open a new Zen window there |
| `alt-shift-;` | Reload config |

Open or jump to an app with `ctrl-alt-<key>`:

| Key | App | Key | App |
|---|---|---|---|
| `t` | WezTerm | `d` | Discord |
| `b` | Zen | `k` | Calendar |
| `c` | Claude | `f` | Firefox |
| `n` | Notion | `s` | Spotify |
| `w` | WhatsApp | `m` | Apple Music |
| `e` | Finder | | |
