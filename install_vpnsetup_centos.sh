#!/bin/bash
# All values MUST be placed inside 'single quotes'
# DO NOT use these special characters within values: \ " '
wget https://git.io/vpnsetup-centos -O vpnsetup.sh && sudo \
VPN_IPSEC_PSK='LjiYwn4PnqiAHdjm' \
VPN_USER='chuck' \
VPN_PASSWORD='steve222' \
sh vpnsetup.sh