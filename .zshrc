export PATH=$PATH:/opt/homebrew/opt/llvm/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/go/bin

# cd
alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"
alias code="cd /Users/norflin/main/code"
alias pets="cd /Users/norflin/main/code/rockstone/mergicpets_client"

# apps
alias nvim="~/main/nvim-macos-arm64/bin/nvim"
alias vi="nvim"
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

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'
setopt prompt_subst
PROMPT='%n %~${vcs_info_msg_0_} ❯ '
