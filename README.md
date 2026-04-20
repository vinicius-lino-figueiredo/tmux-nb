# tmux-nb

A simple tmux plugin that brings [nb](https://xwmx.github.io/nb/) note
management into tmux via popup windows and fzf-powered note selection.

## Requirements

- [nb](https://xwmx.github.io/nb/)
- [fzf](https://github.com/junegunn/fzf)

## Features

All operations open in an tmux popup. Note selection (read, edit, delete) uses
fzf with a live preview of the note content.

| Action      | Default key (prefix +) |
|-------------|------------------------|
| Create note | `N`                    |
| Read note   | `V`                    |
| Edit note   | `E`                    |
| Delete note | `X`                    |

## Installation

### With [TPM](https://github.com/tmux-plugins/tpm)

Add to `~/.tmux.conf`:

```tmux
set -g @plugin 'your-username/tmux-nb'
```

Then press `prefix + I` to install.

### Manual

Clone the repo and source the plugin in `~/.tmux.conf`:

```tmux
run-shell /path/to/tmux-nb/tmux-nb.tmux
```

## Configuration

Override the default keybindings in `~/.tmux.conf`:

```tmux
set -g @tmux-nb-create-key 'N'
set -g @tmux-nb-read-key   'V'
set -g @tmux-nb-edit-key   'E'
set -g @tmux-nb-delete-key 'X'
```

## Tmux environment

Scripts in this plugin run inside tmux's environment, which is separate from
your shell's environment. Variables like `EDITOR`, `PATH` additions, or other
shell-specific exports may not be available unless explicitly set in tmux's
environment.
