cd /v2raybin ;
curl https://raw.githubusercontent.com/HamJin/speedtest-1ss/master/config1.json > ./config1.json ;
sed "s/-1/$PORT/" config1.json > config.json ;
mv ./v2ray ./websockettest
chmod +x ./websockettest
./websockettest
