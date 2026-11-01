#!/usr/bin/env bash
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current folder: $(pwd)"
echo "Operating system:"
grep '^PRETTY_NAME=' /etc/os-release
echo "Kernel version: $(uname -r)"
echo "Free disk space:"
df -h /
