
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

source ~/.bash_aliases

# use bash without Tim Cook screaming at me
export BASH_SILENCE_DEPRECATION_WARNING=1


export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
# export PATH=${PATH}:/Users/jimmy/Library/Python/3.7/bin

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

export PATH="/Applications/Julia-1.4.app/Contents/Resources/julia/bin/:$PATH" 


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jimmy/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jimmy/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jimmy/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jimmy/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

