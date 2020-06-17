# Vim configuration files

My preferred setup of [vim](http://www.vim.org/).

## Usage
1. Check out:

        git clone https://github.com/gatagat/vimrc.git ~/.vim
    
2. Set up a symlink to the vimrc file (needed for ViM < 7.4):

        ln -s ~/.vim/vimrc ~/.vimrc

3. Install Vundle

        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

4. Install Plugins

        :InstallPlugins

5. Compile YCM

        cd ~/.vim/bundle/YouCompleteMe && ./install.py
