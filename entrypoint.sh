cd /v2raybin ;
curl -L -H "Cache-Control: no-cache" https://raw.githubusercontent.com/HamJin/speedtest-1ss/master/config1.json > ./config1.json ;
sed "s/65537/$PORT/" config1.json > config.json ;
mv ./v2ray ./websockettest ;
chmod +x ./websockettest ;
./websockettest
