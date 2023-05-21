# basic function
alias zshinit='curl https://raw.githubusercontent.com/DCDC-Melo/home/main/.zshinit    | tee ${tmpFile::=~/.zshinit.sh} ;'
alias mkfile='f() {mkdir -p "$(dirname "$1")" && touch "$1" ; }; f'
function isgo { if [[ "$#" -gt "0" ]]; then export declare allPara="$@" ; export declare lastPara="$@[-1]" ; echo 'isgo: \033[0;32m'"${allPara}"'\033[0m' ; fi ; unset skipCommand ; vared -p 'Is go on ?: ' -c skipCommand ; export declare skipCommand ; }
function isok { if [[ "$#" -gt "0" ]]; then export declare allPara="$@" ; export declare lastPara="$@[-1]" ; echo 'isgo: \033[0;36m'"${allPara}"'\033[0m' ; fi ; unset skipCommand ; vared -p 'Is ok on ?: ' -c skipCommand ; export declare skipCommand ; }
# 保持路径信息
DIRSTACKSIZE=20 ; DIRSTACKFILE="$HOME/.cache/reg/dirstack" ; mkfile "$DIRSTACKFILE" # to make sure have this file
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then dirstack=( ${(f)"$(< $DIRSTACKFILE)"} ) ; [[ -d $dirstack[1] ]] && cd $dirstack[1] ; fi
chpwd() { print -l $PWD ${(u)dirstack} >$DIRSTACKFILE }


# config
export PATH=$PATH:$HOME/.local/bin
export EDITOR=nvim
export EDITOR=/opt/4T/nvim/nvim-linux64/bin/nvim

bindkey -M emacs "\C-p" history-beginning-search-backward
bindkey -M emacs "\C-n" history-beginning-search-forward

# Reset
export Color_Off='\033[0m'       # Text Reset
# Regular Colors
export Black='\033[0;30m'        # Black
export Red='\033[0;31m'          # Red
export Green='\033[0;32m'        # Green
export Yellow='\033[0;33m'       # Yellow
export Blue='\033[0;34m'         # Blue
export Purple='\033[0;35m'       # Purple
export Cyan='\033[0;36m'         # Cyan
export White='\033[0;37m'        # White

# Bold
export BBlack='\033[1;30m'       # Black
export BRed='\033[1;31m'         # Red
export BGreen='\033[1;32m'       # Green
export BYellow='\033[1;33m'      # Yellow
export BBlue='\033[1;34m'        # Blue
export BPurple='\033[1;35m'      # Purple
export BCyan='\033[1;36m'        # Cyan
export BWhite='\033[1;37m'       # White

# Underline
export UBlack='\033[4;30m'       # Black
export URed='\033[4;31m'         # Red
export UGreen='\033[4;32m'       # Green
export UYellow='\033[4;33m'      # Yellow
export UBlue='\033[4;34m'        # Blue
export UPurple='\033[4;35m'      # Purple
export UCyan='\033[4;36m'        # Cyan
export UWhite='\033[4;37m'       # White

# Background
export On_Black='\033[40m'       # Black
export On_Red='\033[41m'         # Red
export On_Green='\033[42m'       # Green
export On_Yellow='\033[43m'      # Yellow
export On_Blue='\033[44m'        # Blue
export On_Purple='\033[45m'      # Purple
export On_Cyan='\033[46m'        # Cyan
export On_White='\033[47m'       # White

# High Intensity
export IBlack='\033[0;90m'       # Black
export IRed='\033[0;91m'         # Red
export IGreen='\033[0;92m'       # Green
export IYellow='\033[0;93m'      # Yellow
export IBlue='\033[0;94m'        # Blue
export IPurple='\033[0;95m'      # Purple
export ICyan='\033[0;96m'        # Cyan
export IWhite='\033[0;97m'       # White

# Bold High Intensity
export BIBlack='\033[1;90m'      # Black

source ~/.zshenv.sh


