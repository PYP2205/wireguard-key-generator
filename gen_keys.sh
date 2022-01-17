# Linux Shell script that generates WireGuard Keys

# Generates Public and Private Keys
wg genkey | tee privatekey | wg pubkey > publickey
echo

# Shows generated Public key
echo Public Key:
cat publickey

echo

# Shows generated Private key
echo Private Key:
cat privatekey
