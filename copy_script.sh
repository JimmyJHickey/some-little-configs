###
# Jimmy Hickey
# 2019-09-07
# A script to copy config files into this repo
###

# Pull latest changes
git pull

# Start copying config files

# Bash Aliases
BASH_ALIAS_LOCATION="/Users/jimmy/.bash_aliases"
BASH_ALIAS_FILE="bash_aliases"

cp ${BASH_ALIAS_LOCATION} ${BASH_ALIAS_FILE}

# Vim RC
VIM_RC_LOCATION="/Users/jimmy/.vimrc"
VIM_RC_FILE="vimrc"

cp "${VIM_RC_LOCATION}" "${VIM_RC_FILE}"

# Cron jobs
CRONTAB_FILE="crontab"
crontab -l > ${CRONTAB_FILE}


# Commit new changes
DATE="$(date '+%Y-%m-%d %H:%M:%S')"
COMMIT_MESSAGE="Config update "${DATE}

CHANGES="$(git status --porcelain)"


if [[ "${CHANGES}" ]]; then
	git add -A
	git commit -m "${COMMIT_MESSAGE}"
	git push
fi
