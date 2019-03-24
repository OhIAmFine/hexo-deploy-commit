sed -e 's/:[^://]/="/g;s/$/"/g' _config.yml> file.sh

.  ./file.sh

message=$1

sed -e 's/=/:/g;s/"/ /g' file.sh> _config1.yml

echo "commit message is : ${message}"