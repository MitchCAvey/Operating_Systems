#!/bin/bash

# === Function Definitions ===

# Print header
print_banner() {
  echo "======================================"
  echo " STEM Directory Builder"
  echo "======================================"
}

# Create a directory if it doesn't exist
create_dir() {
  local dir_path="$1"
  if [[ ! -d "$dir_path" ]]; then
    mkdir -p "$dir_path"
    echo "[+] Created: $dir_path"
  else
    echo "[=] Exists: $dir_path"
  fi
}

# Build STEM structure
build_stem_structure() {
  local base="$HOME/Documents/STEM/Technology/Com_Sci"
  declare -a categories=("CI_CD" "Computer_Networking" "Operating_Systems" "Programming_Lanaguages")
  declare -a subdirs1=("Git_GitHub" "CodeDeploy")
  declare -a subdirs2=("Linux" "Windows")

  echo "Building base structure in: $base"
  for cat in "${categories[@]}"; do
    create_dir "$base/$cat"
  done

  echo "Adding subdirectories under Technology..."
  for sub1 in "${subdirs1[@]}"; do
    create_dir "$base/CI_CD/$sub1"
  done

  echo "Adding subdirectores under Operating_Systems"
  for sub2 in "${subdirs2[@]}"; do
      create_dir "$base/Operating_Systems/$sub2"
  done
}

# === Main Script Execution ===
print_banner
build_stem_structure
echo "✅ Directory structure created successfully!"
