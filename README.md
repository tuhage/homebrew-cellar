# Homebrew Tap for Cellar

[Cellar](https://github.com/tuhage/Cellar) is a native macOS app for managing Homebrew packages, services and Brewfiles.

## Install

```bash
brew install --cask tuhage/cellar/cellar
```

This installs **Cellar.app** and the `cellar` command-line tool.

`brew upgrade` keeps Cellar up to date with your other packages, and so does Cellar's own Updates page.
If Cellar is open when you run `brew upgrade`, brew quits it and reopens it afterwards.

## Uninstall

```bash
brew uninstall --cask cellar
```

Add `--zap` to also remove Cellar's settings, caches and logs.
