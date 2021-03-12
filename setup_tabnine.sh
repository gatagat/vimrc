#!/bin/bash

cd ~/.vim/bundle/tabnine-vim && ./install.py

pip3 install python-language-server

if [ "$(uname)" == "Darwin" ]; then
	tabnine_config=~/Library/Preferences/TabNine/TabNine.toml
else
	tabnine_config=~/.config/TabNine/TabNine.toml
fi

cat > "$tabnine_config" <<EOL
[language.python]
command = "$(python -m site --user-base)/bin/pyls"
install = [["pip", "install", "python-language-server"]]
EOL
