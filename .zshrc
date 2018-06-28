### Aliases ###
alias checker="bash ~/42FileChecker/42FileChecker.sh"
alias zshconfig="vim ~/.zshrc"
alias docs="cd ~/Documents"
alias clr="clear"
alias zshsource="source ~/.zshrc"
alias clearbak='cd ~/Library/ && echo "\nBefore: " && du -sh ~/Library/ ; rm -rf *_bak_* ; echo "\nAfter: " ; du -sh ~/Library/ ;  cd -'
alias leak_check="valgrind --tool=memcheck --leak-check=full --track-origins=yes --show-leak-kinds=indirect"
alias openvs="open -a Visual\ Studio\ Code"
alias backup_config="cd ~/Documents/side_projects && rm -rf configs && git clone https://github.com/Edorenta/rc_configs.git configs && cp ~/.zshrc configs/zshrc && cp ~/.vimrc configs/vimrc && cd ~/Documents/side_projects/configs/ && git add * && git commit -m 'conf' && git push origin master"
alias goteam="cd ~/Documents/cursus_42/teamwork"
alias golib="cd ~/Documents/cursus_42/libft"
alias gofillit="cd ~/Documents/cursus_42/fillit"
alias gognl="cd ~/Documents/cursus_42/get_next_line"
alias gofdf="cd ~/Documents/cursus_42/fil_de_fer"
alias goprintf="cd ~/Documents/cursus_42/ft_printf"
alias gomuffin="cd ~/Documents/side_projects/muffin"
alias gccmlx="gcc -lmlx -framework OpenGL -framework AppKit"
alias mmlx="man /usr/share/man/man3/mlx.1"
alias mmlx_loop="man /usr/share/man/man3/mlx_loop.1"
alias mmlx_new_image="man /usr/share/man/man3/mlx_new_image.1"
alias mmlx_new_window="man /usr/share/man/man3/mlx_new_window.1"
alias mmlx_pixel_put="man /usr/share/man/man3/mlx_pixel_put.1"
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
USER=$(/usr/bin/whoami)
export USER
MAIL="$USER@student.42.fr"
export MAIL
export PATH=/Users/pde-rent/.brew/bin:/Users/pde-rent/.brew/bin:/Users/pde-rent/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/munki

# Load Homebrew config script
source $HOME/.brewconfig.zsh
