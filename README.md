# wireguard-key-generator
A Linux Shell progrm that generates Public and Private Keys for your WireGuard Server and Client configuration files.

# Instructions
Make sure you have WireGuard installed in your Linux device. If it's not installed,
then run:
sudo apt install wireguard

If you already have it installed, then clone this repository:
git clone https://github.com/ParamonPlay2205/wireguard-key-generator/

Now run the file with root privliges
sudo sh gen_keys.sh

Now you should have your WireGuard keys generated. Please do not share the private keys with anyone.

Make a configuration file in /etc/wireguard

# Sample server config file:
```
# Server Interface
[Interface]
PrivateKey = (Generated Private Key)
Address = (IPv4 and/or IPv6 Address)/prefix
ListenPort = (Port number, make sure to allow that port onto your firewall if enabled)

# Client Interface
[Peer]
PublicKey = (Generated Client Public Key)
PresharedKey = (Generated preshared key, Optional)
AllowedIPs = (0.0.0.0/0 and/or ::/0 for encryption, or client IPv4 and/or IPv6 address)
```

# Sample client config file:
```
# Client Interface
[Interface]
PrivateKey = (Generated Client Private Key)
Address = (IPv4 and/or IPv6 address)/prefix
DNS = (DNS Servers)

# Server Interface
[Peer]
PublicKey = (Generated Server Public Key)
PresharedKey = (Generated preshared key, Optional)
AllowedIPs = (0.0.0.0/0 and/or ::/0 for encryption, or client IPv4 and/or IPv6 address)
EndPoint = (server ip:port number)
```
