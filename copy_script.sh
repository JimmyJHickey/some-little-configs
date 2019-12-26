###
# Jimmy Hickey
# 2019-09-07
# A script to copy config files into this repo
###

# Set up git
git config --global user.name "jimmyjhickey"
git config --global user.email "jimmyjhickey@gmail.com"

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

# R Config
R_CONFIG="/Users/jimmy/.Renviron"
R_CONFIG_FILE="Renviron"

cp "${R_CONFIG}" "${R_CONFIG_FILE}"


# Cron jobs
CRONTAB_FILE="crontab"
crontab -l > ${CRONTAB_FILE}


# Commit new changes
DATE="$(date '+%Y-%m-%d %H:%M:%S')"
COMMIT_MESSAGE="Config update "${DATE}

CHANGES="$(git status --porcelain)"


if [[ "${CHANGES}" ]]; then

	# sanity check to check that this works
	touch /tmp/sanity
	echo "AM RUNNING" >> /tmp/sanity
	echo $(date) >> /tmp/sanity



	git add -A
	git commit -m "${COMMIT_MESSAGE}"
	git push -u origin master
fi
