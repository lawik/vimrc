#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
mkdir -p "$HOME/.config"
TARGET="$HOME/.config/nvim"
ln -s "$DIR" "$TARGET"

git clone git@github.com:elixir-lsp/elixir-ls.git
cd elixir-ls && mkdir rel

ELIXIR_LS_TAG="v0.12.0"

# checkout the latest release if you'd like
git checkout tags/$ELIXIR_LS_TAG

mix deps.get && mix compile

mix elixir_ls.release -o release
