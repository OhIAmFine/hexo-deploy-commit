sed -e 's/:[^://]/="/g;s/$/"/g' _config.yml> file.sh
sed -e 's/=/:/g;s/"/ /g' file.sh> _config1.yml

.  ./file.sh

echo "message is $message"