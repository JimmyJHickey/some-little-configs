### windows games
alias chrome="/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe"
alias brackets="/mnt/c/Program\ Files\ \(x86\)/Brackets/Brackets.exe"

###

alias sshpi="ssh pi@192.168.1.21"

alias c=clear

alias s="echo -e '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'"

alias sc="s;c"

alias cdg="cd /mnt/c/Users/18477/Google\ Drive\ File\ Stream/My\ Drive"

#alias ls="ls --group-directories-first --color=auto -C"

#alias ll="ls -gohalt --color=auto"

pfp(){
	echo `readlink -f $1`
}

hg(){
	history | grep "$*" | tail
}

alias ocr-pdf="/mnt/c/Users/18477/git/some-little-configs/aliases/ocr_pdf.sh"

alias up-sas="/mnt/c/Users/18477/git/some-little-configs/aliases/launch_sas.sh"

alias down-sas="/mnt/c/Users/18477/git/some-little-configs/aliases/close_sas.sh"

alias web="cd /mnt/c/Users/18477/git/jimmyjhickey.com; brackets ./mnt/c/Users/18477/git/jimmyjhickey.com & bundle exec jekyll serve & sleep 10; chrome --new-window http://127.0.0.1:4000"


# list to header script. pipe to clipboard
alias lth="python /mnt/c/Users/18477/git/some-little-configs/aliases/list_to_headers.py | clip.exe"

alias save-pdf="/mnt/c/Users/18477/git/some-little-configs/aliases/web_to_pdf.sh"

# kill jekyll task by finding its PID and killing it
# this alias requires single quotes because it needs to find the PID when it is run
alias kjekyll='kill -9 $(pgrep -f "jekyll serve")'

alias gcheck='/mnt/c/Users/18477/git/some-little-configs/aliases/git_subdirs.sh'

# remove files from git repo that have been added to gitignore
alias gignore='git rm -r --cached .; git add .; git commit -m "Clean up ignored files"'

alias python='python3'
alias pip='pip3'
