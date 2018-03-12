#!/usr/bin/env bash
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf "$script_dir/.bash_profile" ~/.bash_profile 
ln -sf "$script_dir/.vimrc" ~/.vimrc 
