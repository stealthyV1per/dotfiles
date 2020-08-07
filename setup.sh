#!/bin/sh
set -e

for file in `find * ! -name setup.sh ! -name README.md ! -name LICENSE`; do
  if [[ -f ~/.$file ]]; then
    echo "Backing up ~/.$file"
    mv ~/.$file ~/.${file}_`date +%s`.bak
  fi

  echo "Creating symlink for $file"
  ln -s $(pwd)/$file ~/.$file
done

echo "All done!"
