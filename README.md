# my-env
## ready to use
Excute this command to install git.
### For Mac OS
1. Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Ready to use git
```
brew install git
```

3. Execute Ansible
MAILADDRESS is email address using GitHub.
```
ansible-playbook site.yml --extra-vars "env=mac git_email=MAILADDRESS"
```

---
To update Brewfile 
```
brew bundle dump
```


### For iPad (iSH)
1. Install git
```
apk add git
```

2. Install ansible

```
apk add ansible
```

3. Execute ansible
MAILADDRESS is email address using GitHub.
```
ansible-playbook site.yml --extra-vars "env=ipad git_email=MAILADDRESS"
```


