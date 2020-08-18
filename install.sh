#!/bin/sh

git clone  https://github.com/RafaelBizzo/bash-insulter

sudo cp bash-insulter/src/bash.command-not-found /etc

sudo echo "if [ -f /etc/bash.command-not-found ]; then" >> /etc/bash.bashrc

sudo echo "    . /etc/bash.command-not-found" >> /etc/bash.bashrc

sudo echo "fi" >> /etc/bash.bashrc

rmdir -r bash-insulter
