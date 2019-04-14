#!/bin/sh
xcode-select --install
mkdir /usr/local/homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /usr/local/homebrew
