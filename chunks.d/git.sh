echo "Install git"

sudo apt install git lazygit

# set identify for git
git config --global user.email "${EMAIL}"
git config --global user.name "${NAME}"

# setup aliases for git
mkdir -p ~/.oh-my-zsh/custom
cat >~/.oh-my-zsh/custom/git.zsh <<'EOF'
alias gll="git log --oneline --graph"
alias gss="git status -sb"
EOF
