#!/bin/bash

cd ~/.vim/bundle/tabnine-vim && ./install.py
pip3 install python-language-server
cat > ~/.config/TabNine/TabNine.toml <<EOL
[language.python]
command = "$HOME/.local/bin/pyls"
install = [["pip", "install", "python-language-server"]]
EOL
