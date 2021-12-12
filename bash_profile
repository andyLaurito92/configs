complete -o nospace -C /usr/local/bin/terraform terraform
CLICOLOR=1

#For more info see https://www.cyberciti.biz/faq/apple-mac-osx-terminal-color-ls-output-option/
export LSCOLORS="bxfxcxdxbxegedabagacad"
alias ls='ls -lGH'
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1='\[\e[0;36m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;35m\]\w\[\e[0m\]\[\033[32m\]$(parse_git_branch)\[\033[00m\]\$ '
