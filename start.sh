#!/bin/zsh

echo "If Github Personal Access Token is not registered, stop running and register one."
echo "Did you register some token in your account on your computer?(y/n)"

is_token=noinput

while [ $is_token != "y" -a $is_token != "n" ]
do
    if [ $is_token != "noinput" ]; then
        echo "Try again"
    fi
    read is_token

done

if [ $is_token = "n" ]; then
    echo "Execution is interrupted."
    echo "Create the token and put one on ../token/github.txt"
    echo "Refer the document opened automatically"
    open https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
    exit 1
fi

echo "Request is accepted!"
echo "--------------------------------------------------------------------------------------------"
echo "Auto Install System is now started."
brew update
brew bundle --file=./brew/Brewfile --verbose

VARDIR=roles/common/vars
export `cat .env`
cp ${VARDIR}/secret.yml.example ${VARDIR}/secret.yml
sed -i "" "s/__git_user_name__/${GITHUB_ID}/" ${VARDIR}/secret.yml
sed -i "" "s/__git_email__/${GITHUB_EMAIL}/" ${VARDIR}/secret.yml
sed -i "" "s/__git_access_token__/${GITHUB_TOKEN}/" ${VARDIR}/secret.yml
cat ${VARDIR}/secret.yml
ansible-playbook site.yml
. ~/.zshrc
