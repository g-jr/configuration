#!/bin/sh
cat leaves | xargs brew install
cat cask | xargs brew install --cask
