FROM alpine:latest

# install openntp
RUN apk add --no-cache chrony

# use custom ntpd config file
COPY assets/chrony.conf /etc/chrony/chrony.conf

# ntp port
EXPOSE 123/udp

# start ntpd in the foreground
ENTRYPOINT [ "/usr/sbin/chronyd","-d"]
