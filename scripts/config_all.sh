#!/bin/bash

# Delete existing config folders?

read -p "Delete the existing config folders? (y/n) " choice

case $choice in
    [yY])
        echo "Deleting config folders"
        declare -a configs
        for dir in ../apps/*/; do
            dir=${dir:8}
            path_prefix="~/.config/"
            path="$path_prefix$dir"
            rm -rf $path
        done
        ;;

    *)
        echo "Make sure that the folders to be linked to config directory do not exist in \".config/\" folder!"
        exit 1
        ;;
esac

(cd ../apps && stow -t $HOME */)
