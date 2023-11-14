#! /bin/sh
# My setup script for a new machine
# Author: Silvhr
# WIP
# Maybe I should use Nix for this

#Detect OS
os_name="$(uname -s)"
echo "Operating System: $os_name"
if [ -f "/etc/os-release" ]; then
    # Read the distribution information from /etc/os-release
    . /etc/os-release
    linux_distribution="$NAME"
elif [ -f "/etc/lsb-release" ]; then
    # Read the distribution information from /etc/lsb-release (used by Ubuntu)
    . /etc/lsb-release
    linux_distribution="$DISTRIB_ID"
else
    # Fallback to checking the output of other commands
    if [ -x "$(command -v lsb_release)" ]; then
        linux_distribution="$(lsb_release -si)"
    elif [ -x "$(command -v debian_version)" ]; then
        linux_distribution="Debian"
    elif [ -f "/etc/debian_version" ]; then
        linux_distribution="Debian"
    elif [ -f "/etc/redhat-release" ]; then
        linux_distribution="Red Hat"
    else
        linux_distribution="Unknown"
    fi
fi

common_packages="git curl wget"
install_common_packages() {
    # Check if the distribution is Arch Linux
    if [ "$linux_distribution" = "Arch Linux" ]; then
        echo "Installing common packages on Arch Linux"
        sudo pacman -Syu --needed "${common_packages[@]}"
    fi

    # Check if the distribution is Debian or Ubuntu
    if [ "$linux_distribution" = "Debian" ] || [ "$linux_distribution" = "Ubuntu" ]; then
        echo "Installing common packages on Debian/Ubuntu"
        sudo apt-get update
        sudo apt-get install -y package1 package2 package3
    fi
    # Add more distribution-specific checks as needed

    # For other distributions, you can add their package manager commands here
}

install_common_packages

#if arch
if [ "$linux_distribution" = "Arch Linux" ]; then
    echo "This is Arch Linux!"
    # Add Arch Linux-specific configuration here
    # For example, install packages with 'pacman'
else
    echo "This script is not configured for $linux_distribution."
    exit 1
fi
