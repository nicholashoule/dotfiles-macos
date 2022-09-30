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

##### Verify GCP keys

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

Launch vim and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`

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
