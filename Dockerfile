FROM adguard/adguardhome

USER root

# Install OpenVPN
RUN apt-get update && apt-get install -y openvpn

# Copy the OpenVPN configuration files and credentials
COPY ./openvpn/ /etc/openvpn/

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER adguard

ENTRYPOINT ["/entrypoint.sh"]