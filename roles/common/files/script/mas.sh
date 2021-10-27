APPID=$1

mas list 2> tmp |grep -q "^${APPID}" && exit 0

mas install ${APPID} || exit 3

exit 1
