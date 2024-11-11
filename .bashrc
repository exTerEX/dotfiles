# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Nextflow version
export NXF_VER=24.10.0
NXF_OPTS='-Xms1g -Xmx4g'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nano'
fi

# ssh
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# Aliases
alias bashconfig="nano ~/.bashrc"
alias ohmybash="nano ~/.oh-my-bash"
alias ll="ls -l"
alias la="ls -la"

# Ensure GPG signing capability in CLI
export GPG_TTY=$(tty)

# Path
export PATH="$PATH:$HOME/.apptainer/bins"
export PATH="$PATH:$HOME/bin/"

# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/andrssa/.oh-my-bash'

# Update oh-my-bash every 90 days
export UPDATE_OSH_DAYS=90

# oh-my-bash settings
OSH_THEME="font"
OMB_CASE_SENSITIVE="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"
HIST_STAMPS='dd.mm.yyyy'
OMB_DEFAULT_ALIASES="check"
OMB_USE_SUDO=false
OMB_PROMPT_SHOW_PYTHON_VENV=true

# oh-my-bash addons
completions=(
  git
  composer
  ssh
)
aliases=(
  general
)
plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/software/easybuild/software/Anaconda3/2023.09-0/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/software/easybuild/software/Anaconda3/2023.09-0/etc/profile.d/conda.sh" ]; then
        . "/opt/software/easybuild/software/Anaconda3/2023.09-0/etc/profile.d/conda.sh"
    else
        export PATH="/opt/software/easybuild/software/Anaconda3/2023.09-0/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
