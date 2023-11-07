#!/bin/bash

# status
alias gitstat="git status"

# commits
alias gitshortlog="git log --oneline"
alias gitmend="git commit --amend"

# remote upstreams
alias gitremote="git remote -v" # view upstreams
alias gitpush="git push -u origin"
alias gitrb="git fetch origin main && git rebase origin/main"

# branches
alias gitbdelete="git branch -D"
alias gitb="git branch"
