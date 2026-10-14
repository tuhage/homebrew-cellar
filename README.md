# Homebrew Tap for Cellar

[Cellar](https://github.com/tuhage/Cellar) is a native macOS app for managing Homebrew packages, services and Brewfiles.

## Install

```bash
brew install --cask tuhage/cellar/cellar
```

This installs **Cellar.app** and the `cellar` command-line tool.

Cellar updates itself in the app, so `brew upgrade` leaves it alone unless you pass `--greedy`.

## Uninstall

```bash
brew uninstall --cask cellar
```

Add `--zap` to also remove Cellar's settings, caches and logs.
