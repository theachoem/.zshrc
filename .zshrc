# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# End block

# Default
export PATH="$PATH:/opt/local/bin"
export PATH="$PATH:/opt/local/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:/Library/Apple/usr/bin"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"

# Flutter
export FLUTTER_PATH="$HOME/fvm/versions/3.7.0"
[ -f ".fvm/flutter_sdk/version" ] && export FLUTTER_PATH=".fvm/flutter_sdk"

export PATH="$PATH:$FLUTTER_PATH/bin"
export PATH="$PATH:$FLUTTER_PATH.pub-cache/bin"
export PATH="$PATH:$FLUTTER_PATH/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Ruby
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
export PATH="/usr/local/opt/libpq/bin:$PATH"
eval "$(rbenv init -)"

# Server
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Spree::Product.reindex
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY="YES"
export DISABLE_SPRING="true"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"                                       # Loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # Loads nvm bash_completion

if [ -f ".nvmrc" ]; then
  nvm use
fi

# Aliases
alias mirror="scrcpy"
alias demd="git branch | grep -v "develop" | grep -v "master" | xargs git branch -D"
alias run_bmb_server="docker-compose --file docker-compose.yml up"
alias run_vt_server="docker-compose --file docker-compose.yml up"
alias rs="bundle exec rails s"
alias rc="bin/spring stop && bundle exec rails c"
alias rspg="sudo lsof -i :5432"
alias redis="brew services start redis"
alias kill3000="bundle exec puma -C config/puma.rb -b tcp://127.0.0.1:3000"
alias bd_fw="flutter build web --release --web-renderer canvaskit && firebase deploy"
alias show_gem='_show() { code $(bundle show $1) }; _show'
alias jailbreak="palera1n -f"

# End block

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
