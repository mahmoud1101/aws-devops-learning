# Lesson 6: Linux Networking Basics

## Key concepts

- An IP address identifies a network interface on a network.
- DNS looks up IP addresses from website names.
- The default gateway handles traffic when no more specific route matches.
- SSH normally uses TCP port 22.
- HTTPS normally uses TCP port 443.
- A firewall controls which network traffic is allowed.

## Commands practised

- ip -brief address shows network interfaces and addresses.
- ip route shows network routes and the default gateway.
- getent ahostsv4 example.com looks up IPv4 addresses.
- curl -I --connect-timeout 10 --max-time 20 https://example.com requests HTTPS response headers.

## Results

- lo is the loopback interface; UNKNOWN is normal for it.
- eth0 was UP and had a private WSL address.
- DNS resolved example.com successfully.
- The HTTPS request returned HTTP/2 200, meaning success.
- I identified the default gateway through eth0.

## AWS connection

A healthy EC2 server can still be unreachable if its security group blocks the connection. Our lab allowed SSH from My IP and the AWS EC2 Instance Connect prefix list.
