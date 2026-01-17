# Talon Quick Reference

## Frequently Used Commands

_This section automatically updates based on commands you ask about most often._

| Command | Action |
|---------|--------|
| `running list` | Show all running apps with their spoken names |
| `focus <app name>` | Switch to named application (e.g., `focus chrome`, `focus idea`) |

## Window & Application Switching

| Command | Action |
|---------|--------|
| `running list` | Show all running apps with their spoken names |
| `focus <app name>` | Switch to named application (e.g., `focus chrome`, `focus idea`) |
| `focus last` | Switch back to previously focused app |
| `window next` | Cycle to next window of current app |
| `window last` | Cycle to previous window of current app |
| `window new` | Open new window |
| `window close` | Close current window |
| `window hide` | Hide current window |

## Mode Switching

| Command | Action |
|---------|--------|
| `wake up` | Enable speech recognition |
| `go to sleep` | Disable speech recognition |
| `dictation mode` | Switch to dictation mode (Gold indicator) |
| `command mode` | Switch to command mode (Blue indicator) |

## Mode Indicator Colors

- **Blue (CornflowerBlue)** - Command mode (active/listening)
- **Gold** - Dictation mode
- **Green (MediumSeaGreen)** - Mixed mode
- **Grey** - Sleep mode (inactive)
- **Black** - Microphone muted

## Navigation

| Command | Action |
|---------|--------|
| `go up` | Move cursor up |
| `go down` | Move cursor down |
| `go left` | Move cursor left |
| `go right` | Move cursor right |
| `go line start` | Jump to start of line |
| `go line end` | Jump to end of line |

## Tab Management

| Command | Action |
|---------|--------|
| `tab next` | Next tab |
| `tab last` | Previous tab |
| `tab close` | Close current tab |
| `tab new` | New tab |
| `tab reopen` | Reopen last closed tab |

## Editing

| Command | Action |
|---------|--------|
| `select all` | Select all text |
| `select line` | Select current line |
| `copy that` | Copy selection |
| `cut that` | Cut selection |
| `paste that` | Paste clipboard |
| `undo that` | Undo last action |
| `redo that` | Redo last undone action |

## macOS Custom Commands

| Command | Action |
|---------|--------|
| `screenshot` | Take full screen screenshot |
| `capture` | Take selection screenshot |

## Chrome Custom Commands

| Command | Action |
|---------|--------|
| `tab duke` / `tab duplicate` | Duplicate current tab |
| `ads ticket` | Insert "ADSSERV-" |

## Slack Custom Commands (macOS)

| Command | Action |
|---------|--------|
| `new message` | New direct message |
| `search` | Search Slack |
| `threads` | View all threads |
| `set status` | Set status |
| `focus next` / `focus last` | Navigate between sections |
| `saved items` | Show saved items |
| `jump` | Jump to channel |
| `code` | Format as inline code |
| `code block` | Format as code block |
| `quote` | Format as quote |
| `channel next` / `channel last` | Next/previous channel |
| `unread next` / `unread last` | Next/previous unread |
| `spotify` / `talon` / `sop` | Jump to workspace 1/2/3 |
| `huddle toggle` | Toggle huddle |
| `link` | Insert link |

## IntelliJ/GoLand Custom Commands

| Command | Action |
|---------|--------|
| `save that` | Save file |
| `duplicate that` | Duplicate line |
| `definition` | Go to definition |
| `rename` | Rename symbol |
| `if err` | Insert Go error check |
| `function` | Insert "func " |
| `show in` | Show in... menu |
| `project file` | Show in project view |
| `search files` | Search files (double shift) |
| `quick action` | Show quick actions |
| `recent files` | Show recent files |
| `find usages` | Find usages |
| `search all` | Search in all files |
| `back` / `forward` | Navigate back/forward |
| `insert output` | Insert fmt.Printf debug line |
| `file` | Open file by name |
| `step over` / `step into` | Debug stepping |
| `continue` | Continue debugging |
| `show commit window` | Show commit tool window |
| `show project window` | Show project tool window |
| `show run window` | Show run tool window |
| `run anything` | Run anything (double Ctrl) |
| `refactor this` | Refactor menu |
| `next method` / `previous method` | Navigate methods |
| `page top` / `page bottom` | Jump to top/bottom |
| `tab next` / `tab last` | Next/previous tab |
| `tab close` | Close tab |
| `split right` | Split editor right |
| `unsplit` | Remove split |
| `splitter next` / `splitter last` | Switch between splits |
| `go to line` | Go to line number |
| `copilot next` / `copilot back` | Copilot suggestions |
| `go back` / `go forward` | Navigate history |

## Terminal/iTerm2 Custom Commands

### Navigation
| Command | Action |
|---------|--------|
| `Katie source` | cd to ~/src/ghe.spotify.net |
| `Katie meg` | cd to megaphone project |
| `Katie work` | cd to work directory |
| `intellij` / `open intellij` | Open IntelliJ in current dir |

### Git Commands
| Command | Action |
|---------|--------|
| `git checkout` | git checkout -b tarad/ADSSERV- |

### Java/Maven Commands
| Command | Action |
|---------|--------|
| `set java eleven` / `set java seventeen` | Switch Java version |
| `maven verify` | Run mvn verify |
| `maven clean verify` | Run mvn clean verify |
| `maven generate sources` | Generate sources |
| `maven package` | Build uber jar |
| `maven format` | Format code with maven |
| `java run` | Run user-agent-normalization jar |

### Go Commands
| Command | Action |
|---------|--------|
| `go mod vendor` | Run go mod vendor |
| `go mod tidy` | Run go mod tidy |
| `go get` | Insert "go get " |

### Make Commands
| Command | Action |
|---------|--------|
| `make test` | Run make test |
| `make deploy` / `deploy staging` | Deploy to staging |
| `make up` | Docker compose up |
| `make down` | Docker compose down |
| `make down up` | Restart docker compose |
| `make vendor` | Run make vendor |

### GCloud Commands
| Command | Action |
|---------|--------|
| `impersonate matcha` | Impersonate matcha service account |
| `of token matcha` | Get matcha identity token |
| `impersonate add logic` | Impersonate ad-logic service account |
| `unset impersonate` | Unset service account impersonation |

### Testing Commands
| Command | Action |
|---------|--------|
| `test traffic` | Run sample traffic curl |
| `test handler` | Insert full handler test curl |
| `jupiter notebook` | Start Jupyter notebook |

## PowerShell Custom Commands (Windows)

### Navigation
| Command | Action |
|---------|--------|
| `lisa` | ls and enter |
| `katie up` | cd .. and enter |
| `katie [text]` | cd to directory |
| `run last` | Run last command |

### Git Commands (PowerShell)
| Command | Action |
|---------|--------|
| `git pull` / `git push` / `git status` | Git commands + enter |
| `git switch` | Insert "git switch " |
| `git switch master` | Switch to master |
| `git checkout` | git checkout -b tarad/MEG- |
| `git rebase master` | Rebase on master |
| `git stash` / `git stash pop` | Stash commands |
| `git cherry pick` | Insert cherry-pick command |
| `strip guid` | Run stripguid command |

## Windows Management (Windows Only)

| Command | Action |
|---------|--------|
| `app next` | Next app (Super+T) |
| `desktop toggle` | Show/hide desktop |
| `windows setting` / `windows run` / `windows search` | Windows shortcuts |
| `window left` / `window right` | Snap window left/right |
| `window maximize` / `window minimize` / `window restore` | Window states |
| `window move` | Enter window move mode |

## Accessibility Features (talon-axkit)

### Window Actions
| Command | Action |
|---------|--------|
| `window close` | Close current window |
| `window close other` | Close all other windows in app |
| `window close all` | Close all windows in app |
| `window minimize` | Minimize current window |
| `window minimize other` | Minimize all other windows in app |
| `window minimize all` | Minimize all windows in app |
| `window fullscreen` | Enter fullscreen for current window |
| `window fullscreen other` | Fullscreen all other windows in app |
| `window fullscreen all` | Fullscreen all windows in app |
| `from <app> window close` | Close current window of specified app |
| `from <app> window close all` | Close all windows of specified app |
| `fullscreen enter` | Enter fullscreen mode |
| `fullscreen exit` | Exit fullscreen mode |

### Document Actions
| Command | Action |
|---------|--------|
| `document open` | Open current document in default app |
| `document open in <app>` | Open current document in specified app |
| `document reveal` / `document show` | Reveal document location in Finder |
| `document copy path` | Copy document path to clipboard |

### Notification Actions
| Command | Action |
|---------|--------|
| `note <number> <action>` | Perform action on notification number |
| `note <number> actions` | Show available actions for notification |
| `note actions` | Show actions for most recent notification |
| `note <action> <app>` | Perform action on first notification from app |
| `note update` | Update notification list |
| `note center` | Open/close Notification Center |

### Talon Development Helpers
| Command | Action |
|---------|--------|
| `element hierarchy` | Print element hierarchy at mouse position |
| `element hierarchy more` | Print detailed element hierarchy |
| `element hierarchy all` | Print full element hierarchy |
| `element tree` | Print element tree at mouse position |
| `element tree more` | Print detailed element tree |
| `element tree all` | Print full element tree |
| `talon copy menu select` | Copy Talonscript for menu item under cursor |
| `talon copy menu key` | Copy menu key code |
| `talon copy menu key pie` | Copy menu key Python code |
| `talon copy app element` | Copy app element reference to clipboard |

## Tips

1. **Finding app names**: Say `running list` to see what Talon calls your apps
2. **Multiple windows**: Calling `focus` on an already-focused app cycles through its windows
3. **Customizing app names**: Edit `app_name_overrides.mac.csv` to change spoken names
4. **IntelliJ plugin**: Requires Voice Code IDEA plugin for full functionality
5. **Accessibility dictation**: Set `user.accessibility_dictation = 1` in settings for context-aware dictation in supported apps

## Resources

- Full reference: [TALON_REFERENCE.md](TALON_REFERENCE.md)
- Official docs: https://talonvoice.com/docs/
- Community wiki: https://talon.wiki/
