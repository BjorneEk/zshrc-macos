

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_MODE='nerdfont-complete'

#
#
#	POWERLEVEL9K ICONS
#
#
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_ANDROID_ICON=""
POWERLEVEL9K_APPLE_ICON=""
POWERLEVEL9K_AWS_EB_ICON="🌱"
POWERLEVEL9K_AWS_ICON=""
POWERLEVEL9K_BACKGROUND_JOBS_ICON="⚙"
POWERLEVEL9K_BATTERY_ICON=""
POWERLEVEL9K_CARRIAGE_RETURN_ICON="↵"
POWERLEVEL9K_DATE_ICON=""
POWERLEVEL9K_DISK_ICON=""
POWERLEVEL9K_DROPBOX_ICON=""
POWERLEVEL9K_ETC_ICON="⚙"
POWERLEVEL9K_EXECUTION_TIME_ICON="祥"
POWERLEVEL9K_FAIL_ICON="✘"
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_FREEBSD_ICON=""
POWERLEVEL9K_GO_ICON=""
POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_JAVA_ICON=""
POWERLEVEL9K_KUBERNETES_ICON="⎈"
POWERLEVEL9K_LINUX_ALPINE_ICON=""
POWERLEVEL9K_LINUX_AOSC_ICON=""
POWERLEVEL9K_LINUX_ARCH_ICON=""
POWERLEVEL9K_LINUX_CENTOS_ICON=""
POWERLEVEL9K_LINUX_COREOS_ICON=""
POWERLEVEL9K_LINUX_DEBIAN_ICON=""
POWERLEVEL9K_LINUX_DEVUAN_ICON=""
POWERLEVEL9K_LINUX_ELEMENTARY_ICON=""
POWERLEVEL9K_LINUX_FEDORA_ICON=""
POWERLEVEL9K_LINUX_GENTOO_ICON=""
POWERLEVEL9K_LINUX_ICON=""
POWERLEVEL9K_LINUX_MAGEIA_ICON=""
POWERLEVEL9K_LINUX_MANJARO_ICON=""
POWERLEVEL9K_LINUX_MINT_ICON=""
POWERLEVEL9K_LINUX_NIXOS_ICON=""
POWERLEVEL9K_LINUX_OPENSUSE_ICON=""
POWERLEVEL9K_LINUX_SABAYON_ICON=""
POWERLEVEL9K_LINUX_SLACKWARE_ICON=""
POWERLEVEL9K_LINUX_UBUNTU_ICON=""
POWERLEVEL9K_NETWORK_ICON=""
POWERLEVEL9K_NODE_ICON="⬢"
POWERLEVEL9K_OK_ICON="✔"
POWERLEVEL9K_PYTHON_ICON=""
POWERLEVEL9K_RUBY_ICON="\x1b[38;2;240;75;29m"
POWERLEVEL9K_RUST_ICON="\x1b[38;2;240;75;29m"
POWERLEVEL9K_SERVER_ICON=""
POWERLEVEL9K_SUNOS_ICON=""
POWERLEVEL9K_SWAP_ICON="易"
POWERLEVEL9K_SWIFT_ICON="ﯣ"
POWERLEVEL9K_TEST_ICON="ﭧ"
POWERLEVEL9K_TIME_ICON=""
POWERLEVEL9K_TODO_ICON="☑"
POWERLEVEL9K_VCS_BOOKMARK_ICON="☿"
POWERLEVEL9K_VCS_BRANCH_ICON=" "
POWERLEVEL9K_VCS_COMMIT_ICON=""
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
POWERLEVEL9K_VCS_GIT_ICON=""
POWERLEVEL9K_WINDOWS_ICON=""
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_OS_ICON=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=""
POWERLEVEL9K_SSH_ICON="ﲳ"
POWERLEVEL9K_PUBLIC_IP_ICON=""
POWERLEVEL9K_RAM_ICON="﬙"

#
#
# END OF ICONS
#
#

zsh_dir_lang(){
	local dir=$(pwd)/
	local CWD=$(echo "$dir" |  tr '[:lower:]' '[:upper:]' )
	local lang=""
	local color='\x1b[38;2;120;120;120m'

	#
	# C
	#
	if [[ $CWD == *"/C/"* ]]; then
		lang=""
		color='\x1b[38;2;169;185;202m'
	fi

	#
	# SCALA
	#
	if [[ $CWD == *"/SCALA/"* ]]; then
		lang=""
		color='\x1b[38;2;218;52;53m'
	fi

	#
	# JAVA
	#
	if [[ $CWD == *"/JAVA/"* ]]; then
		lang=""
		color='\x1b[38;2;32;109;127m'
	fi

	#
	# JAVASCRIPT
	#
	if [[ $CWD == *"/JAVASCRIPT/"* ]]; then
		lang=""
		color='\x1b[38;2;239;118;91m'
	fi

	#
	# RUST
	#
	if [[ $CWD == *"/RUST/"* ]]; then
		lang=""
		color='\x1b[38;2;240;75;29m'
	fi

	#
	# PYTHON
	#
	if [[ $CWD == *"/PYTHON/"* ]]; then
		lang=""
		color='\x1b[38;2;57;111;154m'
	fi

	#
	# HASKELL
	#
	if [[ $CWD == *"/HASKELL/"* ]]; then
		lang=""
		color='\x1b[38;2;95;83;192m'
	fi
	echo -n "%{$color%}$lang%{%f%}" # \uf230 is 
}


zsh_random_currency(){
	local rand=$((1 + ($RANDOM % 3)))
	local color="%F{white}"
	local currency=""
	# BTC
	[[ $rand -eq 1 ]] && currency=""
	#ETH
	[[ $rand -eq 2 ]] && currency="ﲹ"
	# CNY
	[[ $rand -eq 3 ]] && currency="ﲸ"
	echo -n "%{$color%}$currency"
}


zsh_git_logo(){
	local icon=""
	local color="\x1b[38;2;238;81;59m"
	echo -n "%{$color%}$icon"
}

POWERLEVEL9K_CUSTOM_DIR_LANG="zsh_dir_lang"
POWERLEVEL9K_CUSTOM_DIR_LANG_BACKGROUND='white'

POWERLEVEL9K_VCS_GIT_GITHUB_ICON="`zsh_git_logo`"

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{green}%F{black} `zsh_random_currency` %f%k%F{green}%f "
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='green'

POWERLEVEL9K_CONTEXT_TEMPLATE=" %n"

POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_FOREGROUND='greenyellow'
POWERLEVEL9K_BATTERY_BACKGROUND='magenta'
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=($'magenta')
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_STAGES=($'' $'' $'' $'' $'' $'' $'' $'' $'')
POWERLEVEL9K_CONTEXT_FOREGROUND='white'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context battery dir vcs custom_dir_lang)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator ram public_ip command_execution_time)
#
#

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
