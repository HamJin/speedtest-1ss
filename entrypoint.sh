mkdir -m 777 /v2raybin
cd /v2raybin 
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip 
unzip v2ray.zip 
chmod +x /v2raybin/v2ray 
chmod +x /v2raybin/v2ctl 
rm -rf v2ray.zip 
chgrp -R 0 /v2raybin 
chmod -R g+rwX /v2raybin 
cd /v2raybin ;
curl -L -H "Cache-Control: no-cache" https://raw.githubusercontent.com/HamJin/speedtest-1ss/master/config1.json > ./config1.json ;
sed "s/65537/$PORT/" config1.json > config.json ;
mv ./v2ray ./websockettest ;
chmod +x ./websockettest ;
./websockettest
