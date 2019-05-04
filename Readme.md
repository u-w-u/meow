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
- [Install](#install)
- [documentation](#documentation)

<!-- markdown-toc end -->

# Introduction

Neovim/Vim8 modern,light and powerful distribution.

Minimal environment of work 
|-------|-----------|--|---
M       e           o  w

# Install

## Requeriments

    curl -sL install-node.now.sh/lts | sh
    # Optional install yarn if you want install extension by CocInstall command
    curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

- Python3.6.1+.
- python 3 (instalar el python correspondiente a la compilacion de vim)
- vim 8 with :echo has('python3') = 1
- install neovim
- pip3 install --user pynvim
- pip3 install --user Send2Trash
- nert font (https://github.com/ryanoasis/nerd-fonts)

pip3 install --upgrade pynvim
sudo apt install global
sudo apt install ctags
sudo apt install ag

install gtags
 sudo apt install automake autoconf gperf bison flex
 ./configure
 make
 sudo make install

## Install

### Linux

git clone https://github.com/u-w-u/meow.git ~/.vim
git submodule init && git submodule update
.meow

:call coc#util#install() 

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


##fonts

https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/SourceCodePro.zip
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/FiraMono.zip
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/FiraCode.zip

## Add new packcages

git submodule add https://github.com/a ...  pack/core/opt/flipe


# use dein:

dein#check_clean()
dein#recache_runtimepath()


## Iconos de la fuente

https://unix.stackexchange.com/questions/61118/how-to-enter-non-ascii-characters-using-hex-or-octal-codes-in-vi
https://nerdfonts.com/#cheat-sheet


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




