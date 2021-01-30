#!/usr/bin/env bash

DEFAULT_NVIM_NIGHTLY_DIR=${HOME}/.local/share/nvim/nightly
NVIM_BIN_FILE=nvim-macos.tar.gz
NVIM_BIN_DIR=nvim-osx64
NVIM_URL=https://github.com/neovim/neovim/releases/download/nightly/${NVIM_BIN_FILE}

[ -z "$NVIM_NIGHTLY_DIR" ] && export NVIM_NIGHTLY_DIR=$DEFAULT_NVIM_NIGHTLY_DIR

function print_usage() {
  echo
  echo "Usage: $0 [ -u ]"
  echo
  echo "Parameters:"
  echo "-u: Perform update of neovim"
  echo
}

function update_nvim() {
  [ -d "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_DIR}" ] && rm -rf "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_DIR}"
  [ -f "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_FILE}" ] && rm "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_FILE}"
  echo
  echo "Updating neovim..."
  echo
  curl -fLo "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_FILE}" --create-dirs "${NVIM_URL}"
  echo
  echo "Extracting binary distribution..."
  echo
  tar xzf "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_FILE}" --directory="${NVIM_NIGHTLY_DIR}"
}

function start_nvim() {
  export XDG_CONFIG_HOME="${NVIM_NIGHTLY_DIR}/config"
  export XDG_DATA_HOME="${NVIM_NIGHTLY_DIR}/local/share"
  "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_DIR}/bin/nvim" $*
}

if [ "$1" == "--help" ]; then
  print_usage
  exit 0
fi

if [ "$1" == "-u" ]; then
  shift
  update_nvim
fi

if [ ! -f "${NVIM_NIGHTLY_DIR}/${NVIM_BIN_DIR}/bin/nvim" ]; then
  update_nvim
fi

if [ ! -f "${NVIM_NIGHTLY_DIR}/local/share/nvim/site/autoload/plug.vim" ]; then
  echo
  echo "Starting for the first time..."
  echo
  echo "Plugin installation will take place."
  echo "Neovim will restart after completion."
  echo
  start_nvim
fi

start_nvim $*
