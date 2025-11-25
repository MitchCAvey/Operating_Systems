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
  local base="$HOME/Documents/ARnD"
  declare -a categories=("Academy" "RnD")
  declare -a subdirs1=("STEM" "StudyNotes")
  declare -a subdirs2=("Research" "Development")

  echo "Building base structure in: $base"
  for cat in "${categories[@]}"; do
    create_dir "$base/$cat"
  done

  echo "Adding subdirectories under ${categories[0]}..."
  for sub1 in "${subdirs1[@]}"; do
    create_dir "$base/${categories[0]}/$sub1"
  done

  echo "Adding subdirectories under ${categories[1]}..."
  for sub2 in "${subdirs2[@]}"; do
    create_dir "$base/${categories[1]}/$sub2"
  done
  
}

# === Main Script Execution ===
print_banner
build_stem_structure
echo "✅ Directory structure created successfully!"
