### Aliases ###

# Ecole 42
# alias checker="bash ~/42FileChecker/42FileChecker.sh"
# alias clearbak='cd ~/Library/ && echo "\nBefore: " && du -sh ~/Library/ ; rm -rf *_bak_* ; echo "\nAfter: " ; du -sh ~/Library/ ;  cd -'
# alias leak_check="valgrind --tool=memcheck --leak-check=full --track-origins=yes --show-leak-kinds=indirect"
# MAIL="$USER@student.42.fr"
# export MAIL
# export PATH=/Users/pde-rent/.brew/bin:/Users/pde-rent/.brew/bin:/Users/pde-rent/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/munki
# source $HOME/.brewconfig.zsh


alias openvscode="open -a vscode"
alias opensubl="open -a subl"
alias openidea="open -a idea"

alias termconfig="sudo subl ~/.config/alacritty/alacritty.yml"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias godocuments="cd ~/Documents"
alias godesktop="cd ~/Desktop"
alias godownloads="cd ~/Downloads"
alias goprojects="cd ~/Projects"

alias vi='vim'
alias python='python3.6'
alias py='python3.6'
alias pip3='python3.6 -m pip'
alias idea='sh /usr/local/jetbrains/idea-IU-193.6911.18/bin/idea.sh'

alias clr="clear"
alias cls="clear"
alias backup_config="cd ~/Documents/Projects && rm -rf configs && git clone https://github.com/edorenta/configs.git configs && cp ~/.zshrc configs/zshrc && cp ~/.vimrc configs/vimrc && cd ~/Documents/Projects/configs/ && git add -A && git commit -m 'config backup' && git push origin master"
### Functions ###
#function tail_ls { ls -l "$1" | tail; }
# prints tail of the ls funct onto a directory
#function len_sort { awk \'{ print length, $0 }\' | sort -n -s | cut -d "$1"; }
# sort a text file lines by length
#function snr { find . -name "$1" -print0 | xargs -0 sed -i '' -e "$2"; }
# $1 = extension, $2 = s/str/replacement/g (ex: 's/Paul\ de\ Renty/Dwardul/g')

### Export ###
export -f tail_ls len_sort snr
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/pde-rent/.oh-my-zsh
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

### Exports
USER=$(/usr/bin/whoami)
export USER
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export DENO_INSTALL="/home/pde-rent/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
