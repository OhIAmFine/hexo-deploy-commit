sed -e 's/:[^://]/="/g;s/$/"/g' _config.yml> file.sh

rm -rf _config.yml

sed -e 's/=/:/g;s/"/ /g' file.sh> _config.yml

.  ./file.sh

commitMessage=$1

sed -i '' "s/$message/$commitMessage/g" _config.yml

rm  -rf ./file.sh

echo "commit message is : ${message}, ${commitMessage}"