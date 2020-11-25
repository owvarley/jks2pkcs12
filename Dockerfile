FROM alpine:3.12.1
WORKDIR /home/keys

RUN apk --update add openjdk7-jre

COPY convert_key.sh /usr/bin/
RUN chmod +x /usr/bin/convert_key.sh

ENTRYPOINT ["convert_key.sh"]