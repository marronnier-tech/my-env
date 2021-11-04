python3 -m venv atc
source ./bin/activate

curl -sL https://deb.nodesource.com/setup_current.x | bash -
apt -y install nodejs

pip3 install online-judge-tools
npm install -g atcoder-cli
pip3 install selenium
