#!/bin/bash

echo "Enter your Operating System (Windows, macOS, Linux):"
read os
os_lower=$(echo "$os" | tr '[:upper:]' '[:lower:]')

case $os_lower in
    windows)
        echo "You selected Windows."
        ;;
    macos)
        echo "You selected macOS."
        ;;
    linux)
        echo "You selected Linux."
        echo "Great, You belong the Open Source Software"
        echo "Cheers"
        echo -e "\n"
        ;;
    *)
        echo "Invalid operating system: $os"
        ;;
esac
