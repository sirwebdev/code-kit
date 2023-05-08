#!/usr/bin/env bash

install_scripts=(
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/frameworks-and-libs/yarn.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/frameworks-and-libs/pg.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/frameworks-and-libs/serverless.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/frameworks-and-libs/expo.sh",
  "https://raw.githubusercontent.com/pmartinsdev/code-kit/main/programs/frameworks-and-libs/angular-js.sh"
)

for script_url in "${install_scripts[@]}"; do
  curl -fsSl "$script_url" | bash
done

