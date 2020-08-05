FROM alpine:latest
RUN apk add --no-cache --virtual .build-deps ca-certificates curl unzip 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 
CMD /entrypoint.sh



