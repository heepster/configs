#!/bin/bash

OS_SPECIFIC_CONF="os-specific.conf"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Setting up Kitty for Linux"
  ln -sf linux.conf $OS_SPECIFIC_CONF
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Setting up Kitty for OSX"
  ln -sf osx.conf $OS_SPECIFIC_CONF
else
  echo "Operating system not supported"
  exit 1
fi
