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

alias ocr-pdf="/Users/jimmy/git/grad-scripts/misc/ocr_pdf.sh"

alias up-sas="/Users/jimmy/git/grad-scripts/misc/launch_sas.sh"

alias down-sas="/Users/jimmy/git/grad-scripts/misc/close_sas.sh"

alias web="cd /Users/jimmy/git/jimmyjhickey.github.io; jekyll serve & brackets /Users/jimmy/git/jimmyjhickey.github.io & sleep 10; open -na \"Google Chrome\" --args --new-window http://127.0.0.1:4000"