#!/bin/bash -ex
cp ssh/authorized_keys ~/.ssh/authorized_keys
export DEFAULT_ORGUNITS_ALERTS_EMAIL='andres.fernandez@nefeli.io'
# place dotfiles
rm -rf ~/.dotfiles
mv ~/dotfiles ~/.dotfiles
ln -fs ~/.dotfiles/dotsyncrc ~/.dotsyncrc
cd ~/.dotfiles
./dotsync -I
./dotsync -L

