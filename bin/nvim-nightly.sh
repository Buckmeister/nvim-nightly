#!/usr/bin/env bash

export NVN_FULL_PATH=$(realpath "$0")
export NVN_BIN_DIR=$(dirname "$NVN_FULL_PATH")
export NVN_DIR=$(realpath "$NVN_BIN_DIR/..")

DEFAULT_NVN_DIR=${HOME}/.local/share/nvim/nightly
[ -z "$NVN_DIR" ] && export NVN_DIR=$DEFAULT_NVN_DIR

OPERATING_SYSTEM=$(uname)
if [ "$OPERATING_SYSTEM" == "Darwin" ]; then
  NVIM_BIN_FILE=nvim-macos.tar.gz
  NVIM_BIN_DIR=nvim-osx64
  NVIM_COMMAND=${NVN_DIR}/${NVIM_BIN_DIR}/bin/nvim
elif [ "$OPERATING_SYSTEM" == "Linux" ]; then
  NVIM_BIN_FILE=nvim.appimage
  NVIM_COMMAND=${NVN_DIR}/${NVIM_BIN_FILE}
else
  echo "Unsupported operating system"
  exit 1
fi

NVIM_URL=https://github.com/neovim/neovim/releases/download/nightly/${NVIM_BIN_FILE}

function print_usage() {
  echo
  echo "Usage: $0 [ -u ]"
  echo
  echo "Parameters:"
  echo "-u: Perform update of neovim"
  echo
}

function update_nvim() {
  echo
  echo "Updating neovim..."
  echo
  [ -f "${NVN_DIR}/${NVIM_BIN_FILE}" ] && rm "${NVN_DIR}/${NVIM_BIN_FILE}"
  curl -fLo "${NVN_DIR}/${NVIM_BIN_FILE}" --create-dirs "${NVIM_URL}"

  if [ "$OPERATING_SYSTEM" == "Darwin" ]; then
    echo
    echo "Extracting binary distribution..."
    echo
    [ -d "${NVN_DIR}/${NVIM_BIN_DIR}" ] && rm -rf "${NVN_DIR}/${NVIM_BIN_DIR}"
    tar xzf "${NVN_DIR}/${NVIM_BIN_FILE}" --directory="${NVN_DIR}"
  fi

  if [ "$OPERATING_SYSTEM" == "Linux" ]; then
    echo
    echo "Adjusting file permissions"
    echo
    chmod u+x "${NVN_DIR}/${NVIM_BIN_FILE}"
  fi
}

function start_nvim() {
  export XDG_CONFIG_HOME="${NVN_DIR}/config"
  export XDG_DATA_HOME="${NVN_DIR}/local/share"

  "$NVIM_COMMAND" $*
}

if [ "$1" == "--help" ]; then
  print_usage
  exit 0
fi

if [ "$1" == "-u" ]; then
  shift
  update_nvim
fi

if [ ! -x "${NVIM_COMMAND}" ]; then
  update_nvim
fi

if [ ! -f "${NVN_DIR}/local/share/nvim/site/autoload/plug.vim" ]; then
  echo
  echo "Starting for the first time..."
  echo
  echo "Plugin installation will take place."
  echo "Neovim will restart after completion."
  echo
  start_nvim
fi

start_nvim $*
