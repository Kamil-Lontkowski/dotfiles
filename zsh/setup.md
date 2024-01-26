# 1. Install zsh

```shell
sudo apt install zsh
```

# 2. Execute Oh-My-Zsh install script

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# 3. Install zsh-autosuggestion

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

# 4. Install zsh-syntax-highlighting

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

# 5. Install powerlevel10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

# 6. Setup history

```shell
export HISTSIZE=2000 \
export HISTFILE="$HOME/.history" \
export SAVEHIST=$HISTSIZE \
setopt hist_ignore_all_dups \
setopt hist_ignore_space
```

# 7. Copy contents of .zshrc

Only needed to change plugins to:

```shell
plugins=(
  git
  zsh-autosuggestions
  docker
  postgres
  jsontools
  zsh-syntax-highlighting
)
```

and theme to:

```shell
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Also uncomment these

```shell
CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto
ENABLE_CORRECTION="true"
export PATH=~/.local/bin:$PATH
```

# 8. Restart and configure p10k

```
# Wizard options: 
nerdfont-complete + powerline,
small icons,
classic,
unicode,
light,
24h time,
angled separators,
sharp heads,
flat tails,
2 lines,
disconnected,
no frame,
sparse,
many icons,
concise,
transient_prompt,
instant_prompt=verbose.
```
