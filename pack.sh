#!/usr/bin/bash
set -euo pipefail

STUDENT_ID=2025234366
MAIL_PREFIX=xiaozhx2025
ZIP_NAME="${STUDENT_ID}_${MAIL_PREFIX}.zip"

mkdir -p "simulator"

# cp source code to simulator dir
cp -a "CMakeLists.txt" "simulator/"
cp -a "src" "simulator/"
cp -a "third-party" "simulator/"
cp -a "test" "simulator/"
cp -a "batch.sh" "simulator/"
cp -a "build_kernel.sh" "simulator/"

if [[ ! -f "report.pdf" ]]; then
  echo "error: report.pdf does not exits" >&2
  exit 1
fi

# you may archive your test cases and corresponding explaination
# cp -a [your_test_program_dir] "simulator/"

zip -r "${ZIP_NAME}" simulator report.pdf

echo "done: ${ZIP_NAME}"
