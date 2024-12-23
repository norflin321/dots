# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:/opt/homebrew/opt/llvm/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/go/bin

# cd
alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"
alias code="cd /Users/norflin/main/code"
alias pets="cd /Users/norflin/main/code/rockstone/mergicpets_client"
alias nvim="~/main/nvim-macos-arm64/bin/nvim"
alias vi="nvim"

# git
alias ga="git add . && git commit --amend --no-edit"
alias gc="git add . && git commit -am 'wip'"
alias gp="git push"
alias gpf="git push --force"

# apps
alias studio="open -a /Applications/Android\ Studio.app"
alias clang_cpp="/opt/homebrew/Cellar/llvm/19.1.1/bin/clang++"
alias ts-ru="trans -shell -brief ru:en"
alias ts-en="trans -shell -brief en:ru"
alias jira="/Users/norflin/main/code/quick-jira/main"
alias py="python3"
alias pip="pip3"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
source ~/.p10k.zsh # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
