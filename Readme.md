<a name="top"></a>
<a href="http://u-w-u.com"><img src="/doc/img/built with-meow-lightgrey.svg" alt="Made with Love"></a><a href="http://www.twitter.com/x3rron"><img src="http://i.imgur.com/tXSoThF.png" alt="Twitter" align="right"></a><br>
- - -
<p align="center"><img src="/doc/img/meow-mark.svg.png" alt="meow"/></p>
<p align="center">
<b><a href="#">screenshots</a></b>
|
<b><a href="#">documentation</a></b>
</p>

- - -

<p align="center">
<a href="#"><img src="https://img.shields.io/badge/Paypal-Donate-blue.svg" alt="Donate"></a>
<a href="http://www.slant.co/topics/12/~what-are-the-best-programming-text-editors"><img src="https://img.shields.io/badge/Slant-Recommend-ff69b4.svg" alt="Recommend it"></a>
</p>

- - -

**Quick Install:**


    git clone https://github.com/u-w-u/meow ~/.vim

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Introduction](#introduction)
- [Features](#features)
- [Install](#install)
- [Update](#update)

<!-- markdown-toc end -->

# Introduction

Neovim/Vim8 modern,light and powerful distribution.

# Features

- Full customize in one file
- Support for vim 8 and neovim
- Use native vim plugin manager
- Activate package of demand
- Very tiny core packages
- [] Code completion
- [] Linter
- [] Task manager
- [] Note talking
- languages support on demand
 - []HTML
  - Emmet
 - []CSS
  - Emmet
 - []SCSS
  - Emmet
 - []Go
 - []Python
 - []PHP
 - []Markdown
 - []Latex
 - []SQL
 - []Javascript
 - []Typescript
 - []Kotlin
 - []Java
 - []C/C++
 - []Haskell
 - []Bash
 - []XML
- []Database support
- []Debugger
- Spell checker
- Language checker
- Search
- File Explorer


# Install

pip3 install --upgrade neovim
sudo apt install global
sudo apt install ctags
sudo apt install ag

install gtags
 sudo apt install automake autoconf gperf bison flex
 ./configure
 make
 sudo make install



# Update

## Probar

- https://github.com/wincent/ferret
- https://github.com/vim-vdebug/vdebug


## Requeriments

- Python3.6.1+.
- python 3 (instalar el python correspondiente a la compilacion de vim)
- vim 8 with :echo has('python3') = 1
- install neovim
- pip3 install --user neovim
- pip3 install --user pynvim
- pip3 install --user Send2Trash
- nert font (https://github.com/ryanoasis/nerd-fonts)

## Install

### Linux

git clone https://github.com/u-w-u/meow.git ~/.vim
git submodule init && git submodule update
.meow

init.vim ("vimrc"): If you already have Vim installed you can copy %userprofile%\_vimrc to %userprofile%\AppData\Local\nvim\init.vim to use your Vim config with Neovim.

### windows

git clone https://github.com/u-w-u/meow.git ~/vimfiles
cd ~/vimfiles
git submodule init && git submodule update
meow.vim


instalar para arreglar el fix que no detecta la fuente, la version 2 tiene problemas en windows.
https://github.com/ryanoasis/nerd-fonts/releases/tag/v1.2.0

- **Not windows** support. Windows is the ugly evil.
- **Not tested in Mac** pero deberia funcionar. Mac is the beautifull and expensive evil.

Language Client

cd pack/core/start/language-client
./install.sh

## Add new packcages

git submodule add https://github.com/a ...  pack/core/opt/flipe


## Borrar submodule



## Plugins

### UI improves 

- denite.nvim 
- lightline
- goyo 

### Languages

- PHP
- Python
- Go
- SQL


### Frameworks

### Tools

### Checker

### Completion

### Misc

## Configuration

~/.meow 



Cosas por hacer
---------------

create basgets
--------------
https://shields.io/

Open source crowdfunding
------------------------
https://salt.bountysource.com/
https://opencollective.com
https://www.bountysource.com/




