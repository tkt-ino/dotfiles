#!/bin/bash

PACKAGES="git vim curl wget zsh"

install_packages() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        OS_FAMILY=$ID
    else
        echo "Failed to get OS info"
        exit 1
    fi

    echo "OS family: $OS_FAMILY"

    case $OS_FAMILY in
        ubuntu|debian)
            echo "Using apt"
            sudo apt update && sudo apt install -y $PACKAGES
            ;;
        centos|rhel|fedora)
            echo "Using dnf"
            sudo dnf install -y $PACKAGES
            ;;
        arch)
            echo "Using pacman"
            sudo pacman -Sy --noconfirm $PACKAGES
            ;;
        alpine)
            echo "Using apk"
            sudo apk add $PACKAGES
            ;;
        *)
            echo "Not supported OS"
            exit 1
            ;;
    esac
}

install_packages

echo "Packages installed"

echo "Change default shell to zsh"
chsh -s /usr/bin/zsh
