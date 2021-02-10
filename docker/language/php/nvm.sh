#bin/sh

NVM_DIR=$HOME/.nvm

if !(type "nvm" > /dev/null 2>1); then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
    . $NVM_DIR/nvm.sh
fi

nvm install --lts
nvm alias default lts/*
nvm use default
npm i -g yarn