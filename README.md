### Setup on new laptop
    [host]$ git clone --recursive git@github.com:bonniecpk/vim2.git
    
    [host]$ mv vim2 .vim
    
    [host]$ # Install powerline: http://powerline.readthedocs.org/en/latest/installation/osx.html
    [host]$ pip install --user powerline-status
    
    [host]$ # Install powerline patched fonts: https://github.com/powerline/fonts
    [host]$ pushd ~/Desktop; git clone git@github.com:powerline/fonts.git; ~/Desktop/fonts/install.sh; popd
    
    [host]$ mv .vimrc ~/


### Modules
* vim-fugitive: git info in status line
* vim-airline: nice status line
* ctrlp: fuzzy finder
* vinegar.vim: directory/file navigation
* NerdTree: directory/file navigation in a sidebar
