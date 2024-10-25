export PATH=$PATH:/opt/homebrew/opt/llvm/bin
export PATH=$PATH:~/.cargo/bin

alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"
alias code="cd /Users/norflin/main/code"
alias pets="cd /Users/norflin/main/code/rockstone/mergicpets_client"
alias ts-ru="trans -shell -brief ru:en"
alias ts-en="trans -shell -brief en:ru"

# git
alias ga="git add . && git commit --amend --no-edit"
alias gc="git add . && git commit -am 'wip'"
alias gp="git push"
alias gpf="git push --force"
gh() { open `git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//'`| head -n1 }

alias studio="open -a /Applications/Android\ Studio.app"
alias clang_cpp="/opt/homebrew/Cellar/llvm/19.1.1/bin/clang++"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion