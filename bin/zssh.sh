#!/bin/bash
tar c -C${HOME} .oh-my-zsh .zshrc .vim .vimrc .tmux.conf | ssh root@app.flavoury.com 'tar mx -C${HOME}'
ssh -t root@app.flavourly.com "/bin/zsh"