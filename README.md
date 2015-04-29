### Setup on new laptop
    git clone --recursive git@github.com:bonniecpk/vim2.git
    mv vim2 .vim
    # Install powerline: http://powerline.readthedocs.org/en/latest/installation/osx.html
    pip install --user powerline-status
    # Install powerline patched fonts: https://github.com/powerline/fonts
    pushd ~/Desktop; git clone git@github.com:powerline/fonts.git; ~/Desktop/fonts/install.sh; popd
    mv .vimrc ~/


### Modules
* vim-fugitive: git info in status line
* vim-airline: nice status line
* ctrlp: fuzzy finder
* vinegar.vim: directory/file navigation
* NerdTree: directory/file navigation in a sidebar
