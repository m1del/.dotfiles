# Python Utils
 __conda_setup="$("$HOME/miniconda3/bin/conda" "shell.zsh" "hook" 2> /dev/null)"
 if [ $? -eq 0 ]; then
     eval "$__conda_setup"
 else
     if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
         . "$HOME/miniconda3/etc/profile.d/conda.sh"
     else
         export PATH="$HOME/miniconda3/bin:$PATH"
     fi
 fi
 unset __conda_setup
 
 if [ -f "$HOME/miniconda3/etc/profile.d/mamba.sh" ]; then
     . "$HOME/miniconda3/etc/profile.d/mamba.sh"
 fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
