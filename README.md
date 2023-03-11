# Installation example

```
git submodule init
git submodule update

ln -s $HOME/dotfiles/.bash_aliases $HOME/
ln -s $HOME/dotfiles/.ghci $HOME/
ln -s $HOME/dotfiles/.gitconfig $HOME/
ln -s $HOME/dotfiles/.gitignore_global $HOME/
ln -s $HOME/dotfiles/.tmux.conf $HOME/
ln -s $HOME/dotfiles/.tmux-themepack $HOME/
ln -s $HOME/dotfiles/.vim $HOME/
ln -s $HOME/dotfiles/.vimrc $HOME/
ln -s $HOME/dotfiles/.zshrc $HOME/
ln -s $HOME/dotfiles/nvim $HOME/.config/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
