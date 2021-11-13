brew update
brew bundle --file=./brew/Brewfile --verbose
ansible-playbook site.yml
