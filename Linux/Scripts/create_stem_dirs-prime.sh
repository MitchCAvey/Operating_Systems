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
  local base="$HOME/Documents/STEM"
  declare -a categories=("Science" "Technology" "Engineering" "Mathematics")
  declare -a tech_subdirs=("Com_Sci" "DevOps" "IT_Support" "Software_Development")

  echo "Building base structure in: $base"
  for cat in "${categories[@]}"; do
    create_dir "$base/$cat"
  done

  echo "Adding subdirectories under Technology..."
  for sub in "${tech_subdirs[@]}"; do
    create_dir "$base/Technology/$sub"
  done
}

# === Main Script Execution ===
print_banner
build_stem_structure
echo "✅ Directory structure created successfully!"
