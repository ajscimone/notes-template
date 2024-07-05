`:x` this exists without saving
## Motions

`B` takes you back not a word, but to the next set of white space
`W` takes you forward not a word, but to the next set of white space
`G` "go all the way" Cap G takes you to the bottom of the file.
`gg` takes you to the top.
`g <thing>` got to?
`O` inserts new line below
`shift + O` adds a new line and inserts edit mode on that line

 ## Hot reload vimrc

`:so %` will hot load your vim rc if your editing your vimrc
% means current file

Or spelled out 
`:source $MYVIMRC`

it will also autocomplete
## help

You can type `:help <setting>` and it will explain a setting

## Splits

`:vsp <filename>` will vertical split
`:split <filename>` will horizontal split
`:sp <filename>` will vertical split
`ctrl + w + v` will also vertical split current file
`ctrl + w + w` will navigate between splits
`:e <file>` to open another file

`:sp <filename>` will vertical split
`ctrl +w <direction motion>` to navigate between terminals

`:wqa` will save and close all your open splits and exit vim

ALSO `:wq` is equivalent to `x`

## Tabs

`ctrl +w` and then `T` to create a tab
you could also do `:tab new <file>` 
navigate tabs with `gt`
`:tab c` closes a tab


## Vim autocompletion understanding

You only have to type as much of a command until it doesnt conflict with another command and it will understand 



## Plugin manager

https://github.com/junegunn/vim-plug


https://github.com/sainnhe/sonokai

sainnhe/sonokai

`vim +PlugUpdate +qall` Run this to update all your plugins. This command is literally "update all my plugins and then quit.

or in vim `PlugUpdate`

`:so %` reloads the current file (in vim)

For issues with line endings:
1. `find . -type f -print0 | xargs -0 dos2unix`
    

### Nerd Tree

`?` in the split to get the help. Press `?` again to close it again.


`:e <file>` will open a file

## Fuzzy finder

`\p` will search everything

`ctrl + p` will do everything in this git repo if in a git repo

`enter` will open it in the current split
`ctrl + v` will open the selected file in a new vertical split
`ctrl + t` will give you that file in a new tab


### Vim abolish

hit `crc` make something camel case
lots of shit like that



## Jons Plugin List

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer --rust-completer' }
Plug 'airblade/vim-gitgutter'
Plug 'bkad/CamelCaseMotion'
Plug 'dense-analysis/ale'
Plug 'embear/vim-localvimrc'
Plug 'godlygeek/tabular'
Plug 'jszakmeister/vim-togglecursor'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/Tabmerge'
Plug 'vim-scripts/argtextobj.vim'
Plug 'vim-scripts/vim-auto-save'