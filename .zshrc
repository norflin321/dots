export PATH=/opt/homebrew/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/System/Cryptexes/App/usr/bin
export PATH=$PATH:/usr/bin:/bin:/usr/sbin
export PATH=$PATH:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin
export PATH=$PATH:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin
export PATH=$PATH:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
export PATH=$PATH:/Users/norflin/nvim/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/Users/norflin/go/bin
export PATH=$PATH:/opt/homebrew/opt/llvm/bin
export PATH=$PATH:/Users/norflin/.jsvu/bin
export PATH=$PATH:/Users/norflin/.cargo/bin
export PATH=$PATH:/Users/norflin/Library/Android/sdk/platform-tools

export ANDROID_HOME="/Users/norflin/Library/Android/sdk"

# For compilers to find llvm you may need to set:
# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# export CC=/opt/homebrew/opt/llvm/bin/clang
# export CXX=/opt/homebrew/opt/llvm/bin/clang++

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# >>> conda initialize >>>
__conda_setup="$('/Users/norflin/code/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/norflin/code/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/norflin/code/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/norflin/code/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
if [ -f "/Users/norflin/code/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/norflin/code/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# rust
source "$HOME/.cargo/env"

# move
alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"

# python
alias venv="source ~/code/venv/bin/activate"
alias python="python3"
alias py="python3"
alias pip="python3 -m pip"

# software
alias vi="nvim"
alias studio="open -a /Applications/Android\ Studio.app"
alias clang++="/opt/homebrew/opt/llvm/bin/clang++"
alias clangd="/opt/homebrew/opt/llvm/bin/clangd"

# git
alias ga="git add . && git commit --amend --no-edit"
alias gc="git add . && git commit -am 'wip'"
alias gp="git push"
alias gpf="git push --force"
gh() { open `git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//'`| head -n1 }
