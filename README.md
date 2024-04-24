# Brief considerations

This repository contains my file configurations for Windows+WSL2+Emacs desktop environment among other settings. Commands to replicate it are provided.

This workflow was provided by [Siiwyn](https://github.com/Siilwyn), which is a reference to [this article](https://www.atlassian.com/git/tutorials/dotfiles) and [this discussion forum](https://news.ycombinator.com/item?id=11071754) about how to set up, track and replicate your dotfiles among other devices. You must change the repository name and links to yours.

### Setup
```sh
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles remote add origin git@github.com:ygor-sena/.dotfiles.git
```

### Replication
```sh
git clone --separate-git-dir=$HOME/dotfiles https://github.com/ygor-sena/.dotfiles.git
rsync --recursive --verbose --exclude '.git' .dotfiles-tmp/ $HOME/
rm --recursive .dotfiles-tmp
```

### Configuration
```sh
dotfiles config status.showUntrackedFiles no
dotfiles remote set-url origin git@github.com:ygor-sena/.dotfiles.git
```

### Usage
```sh
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'feat: add gitconfig'
dotfiles push
```

# References

About Git bare repository:
- [The best way to store your dotfiles: A bare Git repository \*\*EXPLAINED\*\*](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/) by Gabrielle Young

- About WSL settings:
  - [Sharing Windows fonts with WSL](https://x410.dev/cookbook/wsl/sharing-windows-fonts-with-wsl/) by [x410.dev](https://x410.dev/cookbook/wsl/sharing-windows-fonts-with-wsl/)
