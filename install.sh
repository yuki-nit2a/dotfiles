#!/usr/bin/env bash

set -eu

readonly REPOSITORY='https://github.com/yuki-nit2a/dotfiles.git'
readonly CLONE_TO=$1
readonly INSTALL_TO=$2

git clone --recursive "${REPOSITORY}" "${CLONE_TO}"

git submodule foreach bash install.sh "${INSTALL_TO}"
