## Exercise 3 - Network
# On equipo2:
ip route add 4.4.4.4/24 via 5.5.5.1 dev eth1
If Redhat create the file /etc/sysconfig/network-scripts/route-eth1 containing:
GATEWAY0=5.5.5.1
NETMASK0=255.255.255.0
ADDRESS0=4.4.4.4
If Ubuntu then add the the file /etc/netplan/01-netcfg.yaml:
network:
  version: 2
  renderer: networkd
  ethernets:
    eno1:
      dhcp4: true
      routes:
      - to: 4.4.4.4/24
        via: 5.5.5.1

# On equipo1:
ip route add 8.8.8.8/24 via 4.4.4.1 dev eth1
If Redhat create the file /etc/sysconfig/network-scripts/route-eth1 containing:
GATEWAY0=4.4.4.1
NETMASK0=255.255.255.0
ADDRESS0=8.8.8.8
If Ubuntu then add the the file /etc/netplan/01-netcfg.yaml:
network:
  version: 2
  renderer: networkd
  ethernets:
    eno1:
      dhcp4: true
      routes:
      - to: 8.8.8.8/24
        via: 4.4.4.1
Add to the kernel config file /etc/sysctl.conf
net.ipv4.ip_forward=1

<ins> Enable NAT forwarding using iptables: <ins>
sudo iptables -t nat -A POSTROUTING -o ens160 -j MASQUERADE

<ins> Save iptables config: <ins>
sudo iptables-save > /etc/iptables/rules.v4

<ins> Ensure the rules load at boot: <ins>
Add the following line to /etc/rc.local
/sbin/iptables-restore < /etc/iptables/rules.v4