# !/bin/bash

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
email="<insert email"

ssh_key_filename="github_ssh_key"

steak "creating ssh key - press enter when prompted"
ssh-keygen -t ed25519 -C $email -f ~/.ssh/$ssh_key_filename


steak "starting ssh agent"
eval "$(ssh-agent -s)"

steak "updating ssh config file"
touch ~/.ssh/config
echo "
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/$ssh_key_filename
" >> ~/.ssh/config

cat ~/.ssh/config

steak "adding ssh key to keychain"
ssh-add --apple-use-keychain ~/.ssh/$ssh_key_filename