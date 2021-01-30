#!/usr/bin/env bash

export NIGHTLY_DIR="${HOME}/.local/share/nvim/nightly"

if [ "$1" == "-u" ]; then
  shift
  rm -rf "${NIGHTLY_DIR}/nvim-osx64"
  rm "${NIGHTLY_DIR}/nvim-macos.tar.gz"
  curl -fLo "${NIGHTLY_DIR}/nvim-macos.tar.gz" --create-dirs https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
  tar xzvf "${NIGHTLY_DIR}/nvim-macos.tar.gz" --directory="${NIGHTLY_DIR}"
fi

export XDG_CONFIG_HOME="${NIGHTLY_DIR}/config"
export XDG_DATA_HOME="${NIGHTLY_DIR}/local/share"
"${NIGHTLY_DIR}/nvim-osx64/bin/nvim" $*
