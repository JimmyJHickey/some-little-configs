alias sshpi="ssh pi@192.168.1.21"

alias c=clear

alias s="echo -e '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'"

alias sc="s;c"

alias cdg="cd /Users/jimmy/Google\ Drive\ File\ Stream/My\ Drive"

#alias ls="ls --group-directories-first --color=auto -C"

#alias ll="ls -gohalt --color=auto"

pfp(){
echo `greadlink -f $1`
}

hg(){
history | grep "$*" | tail
}

alias ocr-pdf="/Users/jimmy/git/some-little-configs/aliases/ocr_pdf.sh"

alias up-sas="/Users/jimmy/git/some-little-configs/aliases/launch_sas.sh"

alias down-sas="/Users/jimmy/git/some-little-configs/aliases/close_sas.sh"

alias web="cd /mnt/c/Users/jimmy/home/git/jimmyjhickey.com; brackets /mnt/c/Users/jimmy/git/jimmyjhickey.com & bundle exec jekyll serve & sleep 10; open -na \"Google Chrome\" --args --new-window http://127.0.0.1:4000"


# list to header script. pipe to clipboard
alias lth="python /Users/jimmy/git/some-little-configs/aliases/list_to_headers.py | pbcopy"

alias save-pdf="/Users/jimmy/git/some-little-configs/aliases/web_to_pdf.sh"

# kill jekyll task by finding its PID and killing it
# this alias requires single quotes because it needs to find the PID when it is run
alias kjekyll='kill -9 $(pgrep -f "jekyll serve")'

alias gcheck='/mnt/c/Users/jimmy/git/some-little-configs/aliases/git_subdirs.sh'

# remove files from git repo that have been added to gitignore
alias gignore='git rm -r --cached .; git add .; git commit -m "Clean up ignored files"'
