# dotfiles-macos

This repo depends on the [Homesick](https://github.com/technicalpickles/homesick) project to manage dotfiles.

#### OS

- macOS

### Required: Ruby

[homebrew - Ruby](https://www.ruby-lang.org/en/documentation/installation/)

```
brew install ruby
```

[Ruby Version Manager - RVM](https://rvm.io/)

##### Verify GPG keys

```
brew install gnupg
```

##### RVM Installation

```
curl -sSL https://get.rvm.io | bash -s stable --auto-dotfiles
```

### To configure dotfiles

1. Install Homesick with `gem install homesick`
2. Clone this castle with `homesick clone nicholashoule/dotfiles-macos`
3. Create the symlinks with `homesick symlink dotfiles`

---

#### Other post-configurations

##### Set up VundleVim

[GitHub - VundleVim](https://github.com/VundleVim/Vundle.vim)

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

To install from command line: `vim +PluginInstall +qall`

Launch vim and run `:PluginInstall`

##### Set up .oh-my-zsh

[GitHub - Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```
export ZSH="${HOME}/.oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### Set up coreutils

[homebrew - coreutils](https://formulae.brew.sh/formula/coreutils)

```
brew install coreutils
```

##### Set up pre-commit

[homebrew - pre-commit](https://pre-commit.com/#installation)

```
brew install pre-commit
```
