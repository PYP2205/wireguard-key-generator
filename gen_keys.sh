# Linux Shell script that generates WireGuard Keys

# Generates Public and Private Keys
private_key=`wg genkey`
public_key=`echo $private_key | wg pubkey`
preshared_key=`wg genpsk`

if [[ `command -v wg` == "" && `command -v wg-quick` == "" ]] then
    echo "Wireguard is not installed on your system."
    echo "For Debian and Debian-Based systems: apt install wireguard-tools"
    echo "For RHEL and RHEL-Based systems: dnf install wireguard-tools"
    echo "For Arch and Arch-Based systems: pacman -S wireguard-tools"
    exit 1
fi

echo "Public Key: $public_key"
echo "Private Key: $private_key"
echo "Pre-shared Key: $preshared_key"
exit 0
