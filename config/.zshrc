# vim ~/.vim_runtime/my_configs.vim Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
plugins=(scala sbt mvn zsh-syntax-highlighting colored-man python sudo tmux colorize command-not-found commond-aliases copydir copyfile docker github gitignore pip vagrant)
source $ZSH/oh-my-zsh.sh

################################################################################
#==============================================================================
# define variable
DROPBOX=/home/depeng/Dropbox
DROPBOX_BACKUP="$DROPBOX/backup"
D_LINUX_CONFIG="$DROPBOX_BACKUP/linux_config" 

### export env variable group ###
#export VAGRANT_HOME=/home/depeng/ssd/vagrant_home
export PATH="/home/depeng/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export EDITOR='vim'
#==============================================================================
### alias group ###
#==============================================================================
# sys
alias c="cd "
alias skill="sudo kill -9 "
alias jobs="jobs -l"
alias jj="jobs -l"
alias rm="rm -rf"
alias netstat-grep="netstat -tulpn |grep "
alias pwd_copy="pwd | xclip -selection clipboard && echo xclip -selection clipboard"
alias ex="exit"
alias chmodx="chmod u+x"
alias du1="du -d 1 -h"
alias l="ls -alhF"
alias chmodx="chmod u+x"
alias psa="ps aux|grep"
alias update='sudo apt-get update && sudo apt-get clean'
alias upgrade='sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
alias aptrmlock='sudo rm /var/cache/apt/archives/lock && sudo rm /var/lib/dpkg/lock'
# oh my zsh
alias cc="vim ~/.zshrc"
alias vohmyzsh="vifm ~/.oh-my-zsh"
alias ss="source ~/.zshrc"
# keyboard mapping 
alias x="xmodmap ~/.Xmodmap"
# vagrant
alias vs="vagrant status"
alias vd="vagrant destroy --force"
alias vu="vagrant up"
alias vssh="vagrant ssh"
alias vhalt="vagrant halt"
alias vreload="vagrant reload --provision"
alias vsshmongodb="vagrant ssh mongodb"
alias vsshdbvisual="vagrant ssh db_visual"
alias vsshdbdate="vagrant ssh db_data"
alias vsshadmin="vagrant ssh admin_service"
alias vsshopdash="vagrant ssh operation_dashboard"
alias vsshfront="vagrant ssh front_server"
alias vsshinsertservice="vagrant ssh insert_service"
alias vsshregion="vagrant ssh region_server"
alias vsshfeatureinsert="vagrant ssh feature_insert"
alias vsshfeatureupload="vagrant ssh feature_upload"
alias vud="vu db_visual db_data"
alias vddbvisual="vagrant ssh db_visual"
alias vddbdata="vagrant ssh db_feature"
alias vdadmin="vd admin_service"
alias vdopdash="vd operation_dashboard"
alias vdfront="vd front_server"
alias vdinsertservice="vd insert_service"
alias vdregion="vd region_server"
alias vdfeatureinsert="vd feature_insert"
alias vdfeatureupload="vd feature_upload"
alias vuadmin="vu admin_service"
alias vuopdash="vu operation_dashboard"
alias vufront="vu front_server"
alias vuinsert="vu insert_service"
alias vuregion="vu region_server"
alias vuinsert="vu feature_insert"
alias vuupload="vu feature_upload"
alias dockerlist="docker ps a" 
alias dockerstop="bash -e 'docker stop $(docker ps -a -q)'"
alias dockerrm="docker rm -f $(docker ps -a -q)"
alias docker-pid="sudo docker inspect --format '{{.State.Pid}}'"
alias docker-ip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
#su sudo nsenter --target <pid> --mount --uts --ipc --net --pid

# apt-get
alias api='sudo apt-get install -y '
alias apr='sudo apt-get remove'
alias apu='sudo apt-get update'
alias acs='apt-cache search'
alias dpkgweardex='dpkg -l weardex\*'
# mvn
alias mi="echo ' mvn -U clean install' &&  mvn -U clean install"
alias mit=' mvn -U clean install -Dmaven.test.skip=true'
# ssh 
alias sshjenkins='ssh jenkins@jenkins.visenze.com'
alias sshjenkins2='ssh jenkins@jenkins2.visenze.com'
alias sshgpu='ssh jenkins@gpu.visenze.com'
#autojump
alias j='autojump'
# puppet
alias p='puppet'
# vim
alias v='vim'
alias vvim.myconfig='vim ~/.vim_runtime/my_configs.vim'
alias vvimrc='vim ~/.vimrc'
# emacs -t terminal -c GUI
alias emacs_deamon='emacs --daemon'
alias e='emacsclient -t'
alias ec='emacsclient -c'
# tmux 
alias vtmux.keybind="vim /home/depeng/.byobu/keybindings.tmux"
# desk item create
alias shortcut='gnome-desktop-item-edit ~/Desktop/ --create-new'
# auto mapping file type editor 
alias -s py=vim
alias -s c=vim
alias -s java=vim
alias -s txt=vim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
# python
alias pip="sudo pip"
alias py="bpython "
# byobu
alias b="byobu"
#git 
# add -A : include removed files
alias gm="g p && git pull && git add -A * && git commit -m 'auto commit at $(date)' && git push"
alias gs="git status"
#alias grm="git rm $(git ls-files --deleted)  "
alias grm="git ls-files --deleted -z | xargs -0 git rm"
# quick edit a file
alias vgitignore="vim ~/.gitignore_global"
alias vlocal_config="vim /service/config/service/local_config.properties"
alias vdropbox="vim ~/Dropbox"
alias vwiki="vim ~/Dropbox/wiki"
alias vmongo_change_ip="subl /ssd/mongo_update_new.js"
# miscs
alias sm="save_mark"
alias visenze="visenze"
#==============================================================================
### plugin groupy ###
#==============================================================================
source ~/.local/bin/bashmarks.sh
alias vbashmarks='vim ~/.local/bin/bashmarks.sh'
# use vi keybind(not VIM)
#bindkey -v

#==============================================================================
### function groupy ###
#==============================================================================
# function: change dir and list
function chpwd() {
    emulate -L zsh
    ls -al
}
# ssh to aws machine 
function ssh-prod(){
    sudo ssh ubuntu@$1 -i "$DROPBOX_BACKUP/aws/weardex-fashion.pem"
}
function ssh-test(){
    sudo ssh ubuntu@$1 -i "$DROPBOX_BACKUP/aws/weardex-test.pem"
}
alias s-prod-crontab='ssh-prod 54.251.34.87'
alias s-prod-admin_service='ssh-prod 54.179.135.99'
alias s-prod-insert_service='ssh-prod 54.179.137.72'
alias s-prod-rm-insert_service='ssh-keygen -f "/root/.ssh/known_hosts" -R 54.179.137.72'
alias s-prod-search_service='ssh-prod 54.169.103.35'
alias s-prod-routing='ssh-prod 54.169.12.72'
alias s-test-insert_service='ssh-test 54.179.137.72'
alias s-test-crontab='ssh-test 54.251.34.87'
alias s='ssh-prod '
alias st='ssh-test '
alias sshremove='sudo ssh-keygen -f "/root/.ssh/known_hosts" -R '

#=== depeng only ==============================================================
### for depeng working PC only ###
if [ -d '/home/depeng' ]; then
    echo Welcome, Cong Depeng!
    # define variable
    DROPBOX=/home/depeng/Dropbox
    DROPBOX_BACKUP="$DROPBOX/backup"
    D_LINUX_CONFIG="$DROPBOX_BACKUP/linux_config" 
    # TODO: add following backup to github and create autorecovery scripts
    #backup zshrc,byobu,xmodemap,etc.. to my dropbox
    cp /home/depeng/.zshrc "$D_LINUX_CONFIG/zshrc" 
    cp /home/depeng/.Xmodmap "$D_LINUX_CONFIG/xmodmap"
    cp /home/depeng/.byobu/keybindings.tmux $D_LINUX_CONFIG
    cp /home/depeng/.gitconfig $D_LINUX_CONFIG
    cp /home/depeng/.gitignore_global $D_LINUX_CONFIG
    cp /home/depeng/.m2/settings.xml $D_LINUX_CONFIG
    #key mapping
    xmodmap ~/.Xmodmap
    # switch left right mouse by xmodmap
    #xmodmap -e "pointer = 3 2 1"
    #unity-settings-daemon
    # env variable 
    export VAGRANT_HOME=/ssd/vagrant_home
    #tmux set-window-option -t 1 automatic-rename off
fi


source /ssd/github/provision/config/scala.sh
export JAVA_HOME='/usr/lib/jvm/java-7-oracle/' 
export H='/ssd'
