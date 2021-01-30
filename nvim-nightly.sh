#!/usr/bin/env bash

export NIGHTLY_DIR="${HOME}/.local/share/nvim/nightly"

function print_usage() {
  echo
  echo "Usage: $0 [ -u ]"
  echo
  echo "Parameters:"
  echo "-u: Perform update of neovim"
  echo
}

function update_nvim() {
  [ -d "${NIGHTLY_DIR}/nvim-osx64" ] && rm -rf "${NIGHTLY_DIR}/nvim-osx64"
  [ -f "${NIGHTLY_DIR}/nvim-macos.tar.gz" ] && rm "${NIGHTLY_DIR}/nvim-macos.tar.gz"
  echo
  echo "Updating neovim..."
  echo
  curl -fLo "${NIGHTLY_DIR}/nvim-macos.tar.gz" --create-dirs https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
  echo
  echo "Extracting binary distribution..."
  echo
  tar xzf "${NIGHTLY_DIR}/nvim-macos.tar.gz" --directory="${NIGHTLY_DIR}"
}

function start_nvim() {
  export XDG_CONFIG_HOME="${NIGHTLY_DIR}/config"
  export XDG_DATA_HOME="${NIGHTLY_DIR}/local/share"
  "${NIGHTLY_DIR}/nvim-osx64/bin/nvim" $*
}

if [ "$1" == "--help" ]; then
  print_usage
  exit 0
fi

if [ "$1" == "-u" ]; then
  shift
  update_nvim
fi

if [ ! -f "${NIGHTLY_DIR}/nvim-osx64/bin/nvim" ]; then
  update_nvim
fi

if [ ! -f "${NIGHTLY_DIR}/local/share/nvim/site/autoload/plug.vim" ]; then
  echo
  echo "Starting for the first time..."
  echo
  echo "Plugin installation will take place."
  echo "Neovim will restart after completion."
  echo
  start_nvim
fi

start_nvim
