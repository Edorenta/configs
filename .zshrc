### aliases ###

# Ecole 42
# alias checker="bash ~/42FileChecker/42FileChecker.sh"
# alias clearbak='cd ~/Library/ && echo "\nBefore: " && du -sh ~/Library/ ; rm -rf *_bak_* ; echo "\nAfter: " ; du -sh ~/Library/ ;  cd -'
# alias leak_check="valgrind --tool=memcheck --leak-check=full --track-origins=yes --show-leak-kinds=indirect"
# MAIL="$USER@student.42.fr"
# export MAIL
# export PATH=/Users/pde-rent/.brew/bin:/Users/pde-rent/.brew/bin:/Users/pde-rent/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/munki
# source $HOME/.brewconfig.zsh

### Exports
USER=$(/usr/bin/whoami)
export USER
export WIN_HOME=/mnt/d/Users/$USER

# export GOPATH=$HOME/go
# export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
# export DENO_INSTALL=$HOME/.deno
# export PATH=$DENO_INSTALL/bin:$PATH

if grep -iq Microsoft /proc/version; then
  echo "using WSL config"
  export HOME_DIR=$WIN_HOME
else
  echo "using native linux config"
  export HOME_DIR=$HOME
fi

alias openvscode="open -a vscode"
alias opensubl="open -a subl"
alias openidea="open -a idea"

alias termconfig="sudo subl ~/.config/alacritty/alacritty.yml"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias godocuments="cd $HOME_DIR/Documents"
alias godesktop="cd $HOME_DIR/Desktop"
alias godownloads="cd $HOME_DIR/Downloads"
alias goprojects="cd $HOME_DIR/Projects"
alias govideos="cd $HOME_DIR/Projects"
alias gomusic="cd $HOME_DIR/Projects"

alias vi='vim'
alias python='python3.6'
alias py='python3.6'
alias pip3='python3.6 -m pip'
# alias idea='sh /usr/local/jetbrains/idea-IU-193.6911.18/bin/idea.sh'

alias clr="clear"
alias cls="clear"

### Functions ###
backup_config() {
  if [[ -d $HOME_DIR/configs ]]; then
      echo "$HOME_DIR/configs already exists"
      cd $HOME_DIR/configs
      if git rev-parse --git-dir > /dev/null 2>&1; then
        echo "$HOME_DIR/configs is a valid repository"
      else
        echo "error: $HOME_DIR/configs is not a git repository. Exiting..."
        return
      fi
  else
    git clone "https://github.com/edorenta/configs" $HOME_DIR/configs
    cd $HOME_DIR/configs
  fi
  cp ~/{.zshrc,.vimrc} .
  git add -A
  git commit -m 'config backup'
  git push
}

#function tail_ls { ls -l "$1" | tail; }
# prints tail of the ls funct onto a directory
#function len_sort { awk \'{ print length, $0 }\' | sort -n -s | cut -d "$1"; }
# sort a text file lines by length
#function snr { find . -name "$1" -print0 | xargs -0 sed -i '' -e "$2"; }
# $1 = extension, $2 = s/str/replacement/g (ex: 's/Paul\ de\ Renty/Dwardul/g')

### Export ###
# export -f tail_ls len_sort snr
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bureau"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git)
source $ZSH/oh-my-zsh.sh

# change ls colors (we can use dircolors with full config file as well)
export LS_COLORS=$LS_COLORS:'ow=01;36;40'
