#!/usr/bin/env bash

install_scripts=(
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/aws.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/docker.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/git.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/vim.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/ripgrep.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/packer.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/neovim.sh"
)

for script_url in "${install_scripts[@]}"; do
  curl -fsSl "$script_url" | bash
done
