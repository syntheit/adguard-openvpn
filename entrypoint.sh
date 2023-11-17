#!/bin/bash

# Start OpenVPN
openvpn --config /etc/openvpn/client.ovpn --daemon

# Wait for the VPN to connect before starting AdGuard Home
# This is a simple sleep command; in a production scenario you would
# wait for a successful VPN connection before proceeding.
sleep 10

# Start AdGuard Home in the foreground
exec /opt/adguardhome/AdGuardHome