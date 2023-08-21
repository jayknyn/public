# Jay's Public Config Repo

## Zsh

- Install ohmyzsh

```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install plugins

```
$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- Install .zshrc and theme for root user

```
$ wget -O /root/.zshrc https://raw.githubusercontent.com/jayknyn/public/release/zsh/.zshrc \
&& wget -O /root/.oh-my-zsh/themes/jax.zsh-theme  https://raw.githubusercontent.com/jayknyn/public/release/zsh/jax.zsh-theme && source ~/.zshrc
```

## Homebrew

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew analytics off
```

## Git Config

```
git config --global --edit

git commit --amend --reset-author
```

## VS Codium Config

1. `brew install --cask vscodium`

2. `cd ~/codejk/public`

3. `xargs -n 1 codium --install-extension < vsc/vsc-extensions.txt `

4. `cp vsc/vsc-settings.json ~/Library/Application\ Support/VSCodium/User/settings.json`

5. `cp vsc/vscode-keybindings.json ~/Library/Application\ Support/VSCodium/User/keybindings.json`

## Extra Docker Commands

```
watch 'docker ps -a'
```

## This repo maintenance

- just pushing to release branch
