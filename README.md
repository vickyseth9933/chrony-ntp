Docker

This respository contains different images

Launch the container by running the below.

docker run -d --privileged -p 192.168.0.10:123:123/udp  --name=ntp techravi/chronyntp


Testing NTP
From the same node or a different one, run the command below to test the NTP server.

ntpdate -q 192.168.0.27
server 192.168.0.27, stratum 3, offset 0.200555, delay 0.02589
18 Oct 09:53:00 ntpdate[3426]: adjust time server 192.168.0.27 offset 0.200555 sec

ntpdate -q 192.168.0.27
server 192.168.0.27, stratum 0, offset 0.000000, delay 0.00000
18 Oct 09:51:37 ntpdate[3304]: no server suitable for synchronization found

