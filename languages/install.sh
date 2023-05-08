#!/usr/bin/env bash

install_scripts=(
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/languages/node-js.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/lua.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/frameworks-and-libs/install.sh"
)

for script_url in "${install_scripts[@]}"; do
  curl -fsSl "$script_url" | bash
done
