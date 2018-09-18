# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set budspencer_nocmdhist c d ll ls m s
set budspencer_pwdstyle long

set PATH $PATH /media/joe/Jarvis/Anaconda/bin
set JAVA_HOME /opt/jdk1.8.0_181/
set ANDROID_HOME /media/joe/Jarvis/SDKs
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/tools/bin
set PATH $PATH $ANDROID_HOME/platform-tools
set PATH $PATH /home/joe/.yarn/bin
set PATH $PATH /sbin
set PATH $PATH /opt/jdk1.8.0_181/bin
set PATH $PATH /usr/bin
set PATH $PATH /home/joe/.config/yarn/global/node_modules/.bin/
set PATH $PATH /usr/local/go/bin
set PATH $PATH /usr/local/bin/Postman
set PATH $PATH /media/joe/Jarvis/SDKs/tools

# ssh
set SSH_KEY_PATH ~/.ssh/rsa_id

alias h='heroku'
alias manage='python manage.py'
alias dl='youtube-dl -f 22'
alias ripos='cd /media/joe/Jarvis/Ripos'
alias jarvis='cd /media/joe/Jarvis'
set -xU GOPATH /media/joe/Jarvis/Ripos/Go
set -x U GOROOT /media/joe/Jarvis/Ripos/Go
set -x U GOBIN $GOPATH/bin


source /media/joe/Jarvis/Anaconda/etc/fish/conf.d/conda.fish
