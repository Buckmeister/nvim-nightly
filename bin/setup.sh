#!/usr/bin/env bash

TARGET_DIR="$HOME/.local/bin"

export NVN_FULL_PATH=$(realpath "$0")
export NVN_BIN_DIR=$(dirname "$NVN_FULL_PATH")
export NVN_DIR=$(realpath "$NVN_BIN_DIR/..")
export NVN_COMMAND="$NVN_DIR/bin/nvn"

echo

if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory ´does not exist."
  echo "Creating target directory: $TARGET_DIR"
  mkdir -p "$TARGET_DIR"
fi

if [ -L "$TARGET_DIR/nvn" ]; then
  echo "Removing existing symbolic link."
  rm -rf "$TARGET_DIR/nvn"
fi

echo "Creating symbolic link in: $TARGET_DIR"
echo "Targeting $NVN_COMMAND"
ln -s "$NVN_COMMAND" "$TARGET_DIR/"
echo "Finished 🎉"
echo
echo "Type 'nvn' to start neovim nightly."
echo
