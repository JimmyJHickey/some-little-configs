###
# Jimmy Hickey
# 2019-09-07
# A script to copy config files into this repo
###

# Set up git
GIT_USER_NAME="jimmyjhickey"
GIT_USER_EMAIL="jimmyjhickey@gmail.com"

git config user.name "${GIT_USER_NAME}"
git config user.email "${GIT_USER_EMAIL}"


# ssh
git remote set-url origin git@github.com:${GIT_USER_NAME}/some-little-configs.git

# Pull latest changes
git pull

# Start copying config files

# Bash Aliases
BASH_ALIAS_LOCATION="/Users/jimmy/.bash_aliases"
BASH_ALIAS_FILE="bash_aliases"

cp ${BASH_ALIAS_LOCATION} ${BASH_ALIAS_FILE}

# Bash Profile
BASH_PROFILE_LOCATION="/Users/jimmy/.bash_profile"
BASH_PROFILE_FILE="bash_profile"

cp ${BASH_PROFILE_LOCATION} ${BASH_PROFILE_FILE}

# Vim RC
VIM_RC_LOCATION="/Users/jimmy/.vimrc"
VIM_RC_FILE="vimrc"

cp "${VIM_RC_LOCATION}" "${VIM_RC_FILE}"

# IdeaVim RC for Pycharm plug in
IDEA_VIM_RC_LOCATION="/Users/jimmy/.ideavimrc"
IDEA_VIM_RC_FILE="ideavimrc"

cp "${IDEA_VIM_RC_LOCATION}" "${IDEA_VIM_RC_FILE}"

# R Config
R_CONFIG="/Users/jimmy/.Renviron"
R_CONFIG_FILE="Renviron"

cp "${R_CONFIG}" "${R_CONFIG_FILE}"

# Cron jobs
CRONTAB_FILE="crontab"
crontab -l > ${CRONTAB_FILE}

# Mac terminal settings
#TERMINAL_CONFIG="/Users/jimmy/Library/Preferences/com.apple.Terminal.plist"
#TERMINAL_CONFIG_FILE="terminal_config"
#
#cp "${TERMINAL_CONFIG}" "${TERMINAL_CONFIG_FILE}"

# Commit new changes
DATE="$(date '+%Y-%m-%d %H:%M:%S')"
COMMIT_MESSAGE="Config update "${DATE}

CHANGES="$(git status --porcelain)"


if [[ "${CHANGES}" ]]; then

	# sanity check to check that this works
#	touch /tmp/sanity
#	echo "AM RUNNING" >> /tmp/sanity
#	echo $(date) >> /tmp/sanity


	git add -A
	git commit -m "${COMMIT_MESSAGE}"
	git push origin master
fi
