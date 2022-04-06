#! /usr/bin/sh

ip=`ec2-metadata -v | sed -e 's/public-ipv4: //g'`
echo "WEBサーバを起動しました"
echo "アプリケーションURL：http://"${ip}":20880/"
echo "phpMyAdminURL：http://"${ip}":20881/"

cat .env | grep MYSQL_ROOT_PASSWORD
