#!/usr/bin/env bash

install_scripts=(
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/languages/install.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/install.sh"
)

for script_url in "${install_scripts[@]}"; do
  curl -fsSl "$script_url" | bash
done

echo "Done !!"
