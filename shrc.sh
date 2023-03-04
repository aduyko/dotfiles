alias daily='vim +3 "+normal O" ~/notes/daily.mylog'
alias newdaily="vim -c \"pu=strftime('[%m-%d-%Y]')\" ~/notes/daily.mylog"
alias notes='vim ~/notes/notes.mylog'
alias todo='vim ~/notes/personal/todo.mylog'

#Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -FGh'

# Git stuff
alias gs="git status"
alias gd="git diff"
alias gck="git checkout"
alias gpc="git rev-parse --abbrev-ref HEAD | xargs git pull origin" #pull current branch only
alias gl="gld --pretty=format:'%h%x09%an%x09%s' --date=short"
alias gld="git log --graph"
alias gf="git fetch"
alias gsts="git stash"
alias gstsp="git stash pop"
alias gstsl="git stash list"
alias gb="git branch"
alias gbh="git for-each-ref --count=20 --sort=-committerdate refs/heads/ --format='%1B[0;33m%(refname:short)%1B[m: %(subject)'"
alias gbc="git rev-parse --abbrev-ref HEAD" #show current branch
alias gbcp="git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy; pbpaste" #copy current branch to clipboard
alias gbf="git branch | grep " #find local branch with arg name
alias gbfr="git branch -r | sed 's/origin\///' | grep " #find all branches with arg name, strip "origin" from result
alias tf="terraform"

# Directories
alias work="cd ~/workspace"

# functions
grepless() {
  timestamp=$(date +%s)
  filename="tmp_grep_file_$timestamp"
  grep -rni $1 . > $filename & less +F $filename; rm $filename
}

gbhc() {
  git for-each-ref --count=$1 --sort=-committerdate refs/heads/ --format='%1B[0;33m%(refname:short)%1B[m'
}
gstsd() {
  git stash show -p $1
}

