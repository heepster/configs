#!/bin/bash

CURRENT_DIR=$PWD
FISH_DIR=$CURRENT_DIR/fish
VIM_DIR=$CURRENT_DIR/vim
BASH_DIR=$CURRENT_DIR/bashrc
TMUX_DIR=$CURRENT_DIR/tmux
EMACS_DIR=$CURRENT_DIR/emacs

function copyFish() {
  echo "FISH CONFIG"
  FISH_TARGET_DIR=$HOME/.config/fish 
  echo "Making $FISH_TARGET_DIR"
  mkdir -p $FISH_TARGET_DIR
  echo "Symlinking config.fish to $FISH_TARGET_DIR/config.fish"
  ln -s $FISH_DIR/config.fish $FISH_TARGET_DIR/config.fish
  echo "Symlinking functions to $FISH_TARGET_DIR/functions"
  ln -s $FISH_DIR/functions $FISH_TARGET_DIR/functions
} 

function copyVim() {
  echo "VIM CONFIG"
  VIM_TARGET_DIR=$HOME
  echo "Symlinking vimrc to $VIM_TARGET_DIR/.vimrc"
  ln -s $VIM_DIR/vimrc $VIM_TARGET_DIR/.vimrc
} 

function copyTmux() {
  echo "TMUX CONFIG"
  TMUX_TARGET_DIR=$HOME
  echo "Symlinking tmux.conf to $TMUX_TARGET_DIR/.tmux.conf"
  ln -s $TMUX_DIR/tmux.conf $TMUX_TARGET_DIR/.tmux.conf
} 

function copyEmacs () {
  echo "EMACS CONFIG"
  EMACS_TARGET_DIR=$HOME
  echo "Symlinking .emacs to $EMACS_TARGET_DIR/.emacs"
  ln -s $EMACS_DIR/emacs $EMACS_TARGET_DIR/.emacs
  echo "Symlinking .emacs.d to $EMACS_TARGET_DIR/.emacs.d"
  ln -s $EMACS_DIR/emacs.d $EMACS_TARGET_DIR/.emacs.d
}

copyFish
copyVim
copyTmux
copyEmacs
