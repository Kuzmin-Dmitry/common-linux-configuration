YUM_CMD=$(which yum)
APT_GET_CMD=$(which apt)

YUM_PACKAGE_NAME="ansible"
DEB_PACKAGE_NAME="ansible"

if [ ! -z $YUM_CMD ]; then
    yum install -y $YUM_PACKAGE_NAME
elif [ ! -z $APT_GET_CMD ]; then
    apt-get install -y $DEB_PACKAGE_NAME
else
    echo "FAILED: can't install package"
    exit 1;
fi
