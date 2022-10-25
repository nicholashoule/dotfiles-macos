# dotfiles-macos

## macOS

This git repo depends on the [Homebrew](https://github.com/Homebrew/brew), [Homesick](https://github.com/technicalpickles/homesick) & [Spaceship Prompt](https://github.com/spaceship-prompt/spaceship-prompt) projects to manage system dotfiles.

### Required: Ruby

###### [Homebrew - Ruby](https://www.ruby-lang.org/en/documentation/installation/)

```
brew install ruby
```

###### [Ruby Version Manager - RVM](https://rvm.io/)

---

### Configure dotfiles with Homesick

1. Install Homesick with `gem install homesick`
2. Clone this castle with `homesick clone nicholashoule/dotfiles-macos`
3. Create the symlinks with `homesick symlink dotfiles`

---

## Git submodules

#### Set up VundleVim

###### [GitHub - VundleVim](https://github.com/VundleVim/Vundle.vim)

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

- To install from command line: `vim +PluginInstall +qall`
- To install inside Vim, launch vim and run `:PluginInstall`

#### Set up .oh-my-zsh

###### [GitHub - Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```
export ZSH="${HOME}/.oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Post-configurations

#### Theme - Set up Spaceship

###### [Spaceship Prompt](https://github.com/spaceship-prompt/spaceship-prompt)

```
brew install spaceship
```

#### Fonts - Set up Nerd Fonts

###### [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

#### Homebrew

###### [Brewfile](home/Brewfile)

```
brew bundle
```
