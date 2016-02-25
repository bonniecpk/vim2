### Setup on new laptop
    [host]$ git clone --recursive git@github.com:bonniecpk/vim2.git
    
    [host]$ mv vim2 .vim
    
    [host]$ # Install powerline: http://powerline.readthedocs.org/en/latest/installation/osx.html
    [host]$ pip install --user powerline-status
    
    [host]$ # Install powerline patched fonts: https://github.com/powerline/fonts
    [host]$ pushd ~/Desktop; git clone git@github.com:powerline/fonts.git; ~/Desktop/fonts/install.sh; popd

    [host]$ # Install silver search
    [host]$ brew install the_silver_searcher

    [host]$ mv .vimrc ~/

* For patched fonts to work, you would have to set iTerm2 "Regular Font" and "Non-ASCII Font" to support the powerline fonts

### Modules
* vim-fugitive: git info in status line
* vim-airline: nice status line
* ctrlp: fuzzy finder
* vinegar.vim: directory/file navigation
* NerdTree: directory/file navigation in a sidebar
