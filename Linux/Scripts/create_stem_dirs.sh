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
  local base="$HOME/Documents/STEM/Technology/Software_Development"
  declare -a categories=("Projects")
  declare -a subdirs1=("Personal")
  declare -a subdirs2=("Micro_Services" "Research_Docs" "Standalone_Apps" "Video_Games" "Web_Apps")

  echo "Building base structure in: $base"
  for cat in "${categories[@]}"; do
    create_dir "$base/$cat"
  done

  echo "Adding subdirectories under Technology..."
  for sub1 in "${subdirs1[@]}"; do
    create_dir "$base/Projects/$sub1"
  done

  echo "Adding subdirectores under Operating_Systems"
  for sub2 in "${subdirs2[@]}"; do
      create_dir "$base/Projects/Personal/$sub2"
  done
}

# === Main Script Execution ===
print_banner
build_stem_structure
echo "✅ Directory structure created successfully!"
