FROM python:3.10.0-buster
RUN apt update ;\
apt -y install vim ;\
apt -y install curl; \
mkdir /root/home /root/.vim /root/.vim/colors ;\
curl -o /root/.vim/colors/jellybeans.vim -L0 https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim 
COPY .vimrc /root/.vimrc
COPY dein.toml /root/dein.toml
COPY dein_lazy.toml /root/dein_lazy.toml
