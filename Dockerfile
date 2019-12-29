FROM alpine:latest
ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"shadowsocks\",\"address\":\"0.0.0.0\",\"port\": 
ENV CONFIG_JSON2=,\"settings\":{\"password\":\" 
ENV CONFIG_JSON3=\",\"method\":\"chacha20-poly1305\",\"ota\":\"true\"},\"streamSettings\":{\"network\":\"ws\"}},\"inboundDetour\":[],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}} 

ENV VER=4.21.3

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && mkdir -m 777 /v2raybin \
 && cd /v2raybin \
 && curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
 && unzip v2ray.zip \
 && chmod +x /v2raybin/v2ray \
 && chmod +x /v2raybin/v2ctl \
 && rm -rf v2ray.zip \
 && chgrp -R 0 /v2raybin \
 && chmod -R g+rwX /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

#ENTRYPOINT /entrypoint.sh

CMD /entrypoint.sh



