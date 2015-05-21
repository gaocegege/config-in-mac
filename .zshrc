# Path to your oh-my-zsh installation.
export ZSH=/Users/gaoce/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/gaoce/Files/scala-2.11.5/bin:/usr/local/Cellar/git/2.3.0/bin:/usr/local/Cellar/llvm/3.5.0/bin/:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# MacPorts Installer addition on 2014-11-22_at_18:52:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# add the llvm to the path
export PATH="/usr/local/Cellar/llvm/3.5.0/bin/:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
# export PATH=${PATH}:/opt/local/include

#git 2
export PATH="/usr/local/Cellar/git/2.3.0/bin:$PATH"

#set python2.7 as default
alias py=python
PYTHONPATH="${PYTHONPATH}:/Library/Python/2.7/site-packages/"
export PYTHONPATH

#set scala environment
#export PATH="/Users/gaoce/Files/scala-2.11.5/bin:$PATH"
# set to 2.10
export PATH="/Users/gaoce/Programs/scala-2.10.5/bin:$PATH"

# bbs
alias contobbs="telnet bbs.sjtu.edu.cn"

# Github
alias gotogit="cd ~/Github"
alias gotogitblog="cd ~/Github/Blog"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Go Path
export GOPATH="/Users/gaoce/Projects/gopath"

# Homebrew
alias gobrew="cd /usr/local/Cellar/;ls"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Visual Studio Code
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

fpath=(/usr/local/share/zsh-completions $fpath)

# python share
alias pyshare="py -m SimpleHTTPServer"

# color
# iterm coloring
function tab-color() {
    if [[ $# == 1 ]]
    then
        # convert hex to decimal
        hex=$1
        if [[ ${hex:0:1} == "#" ]]
        then
            # strip leading hash sign
            hex=${hex:1:6}
        fi
        if [[ ${#hex} == 3 ]]
        then
            # handle 3-letter hex codes
            hex="${hex:0:1}${hex:0:1}${hex:1:1}${hex:1:1}${hex:2:1}${hex:2:1}"
        fi
        r=$(printf "%d" 0x${hex:0:2})
        g=$(printf "%d" 0x${hex:2:2})
        b=$(printf "%d" 0x${hex:4:2})
    else
        r=$1
        g=$2
        b=$3
    fi
    echo -ne "\033]6;1;bg;red;brightness;$r\a"
    echo -ne "\033]6;1;bg;green;brightness;$g\a"
    echo -ne "\033]6;1;bg;blue;brightness;$b\a"
}
function tab-red() { tab-color 203 111 111; }
function tab-green() { tab-color 6cc276; }
function tab-yellow() { tab-color "#e8e9ac"; }
function tab-blue() { tab-color 6f8ccc; }
function tab-purple() { tab-color a789d4; }
function tab-orange() { tab-color fbbc79; }
function tab-white() { tab-color fff; }
function tab-gray() { tab-color c3c3c3c; }

# Java
#for javac 在mac下乱码  
alias javac='javac -J-Dfile.encoding=UTF-8 -encoding UTF-8 '  
alias java='java -Dfile.encoding=UTF-8 '  
export LANG=en_US.UTF-8  
export LC_ALL=en_US.UTF-8