task: 
	nvim roles/common/tasks/main.yml
ans:
	ansible-playbook site.yml
token:
	cat ~/Documents/token/gitlab.txt | pbcopy
