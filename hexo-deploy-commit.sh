sed -e 's/:[^://]/="/g;s/$/"/g' _config.yml> file.sh

sed -e 's/=/:/g;s/"/ /g' file.sh> _config1.yml

.  ./file.sh

newMessage=$message

commitMessage=$1

sed -i 'back' "s/$message/$commitMessage/g" _config1.yml

echo "commit message is : ${message}, ${commitMessage}"