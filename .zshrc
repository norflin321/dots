# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LANG=en_US.UTF-8

export PATH=/opt/homebrew/bin:$PATH
export PATH=$PATH:/Applications/love.app/Contents/MacOS/:~/main/side/neovide/

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

gh() {
  open `git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//'`| head -n1
}

alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"
alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias count_lines="cloc --fullpath --vcs=git --not-match-d='(node_modules|ios|android|.next|.tmp|)' --not-match-f='(yarn.lock|package.json|package-lock.json)' ."
# alias vi="neovide --multigrid --geometry=240x50"
alias vi="neovide --multigrid --geometry=120x52"

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/norflin/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/norflin/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/norflin/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/norflin/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# bun completions
[ -s "/Users/norflin/.bun/_bun" ] && source "/Users/norflin/.bun/_bun"

# bun
export BUN_INSTALL="/Users/norflin/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
