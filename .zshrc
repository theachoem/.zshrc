# Fig pre block - must be top of the file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"
# End block

export PATH="$PATH:/opt/anaconda3/bin"
export PATH="$PATH:/opt/anaconda3/condabin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.10/bin"
export PATH="$PATH:/opt/local/bin"
export PATH="$PATH:/opt/local/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/Applications/VMware\ Fusion.app/Contents/Public"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:/Library/Apple/usr/bin"

# Python
export PATH="$PATH:$HOME/Library/Python/3.8/bin"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"

# Flutter
export FLUTTER_PATH="$HOME/fvm/versions/2.10.0"
export PATH="$PATH:$FLUTTER_PATH/bin"
export PATH="$PATH:$FLUTTER_PATH.pub-cache/bin"
export PATH="$PATH:$FLUTTER_PATH/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Ruby
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
eval "$(rbenv init -)"

# Server
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/Coding/Tools/elasticsearch-7.12.0/bin:$PATH"

# Spree::Product.reindex
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY="YES"
export DISABLE_SPRING="true"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # Loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # Loads nvm bash_completion

# Aliases
alias mirror="scrcpy"
alias demd="git branch | grep -v "develop" | grep -v "master" | xargs git branch -D"
alias run_bmb_server="docker-compose --file docker-compose.dev.yml up"
alias run_vt_server="docker-compose --file docker-compose.yml up"
alias rs="bundle exec rails s"
alias rc="bin/spring stop && bundle exec rails c"
# End block

# Fig post block - must be bottom of the file.
eval "$(fig init zsh post)"
