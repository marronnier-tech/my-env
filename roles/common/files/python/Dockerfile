FROM python:3.10.0-buster
COPY .vimrc /root/.vimrc
RUN apt update ;\
apt -y install vim ;\
mkdir ~/.vim ~/.vim/colors ;\
curl -o ~/.vim/colors/jellybeans.vim -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
