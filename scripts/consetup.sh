#!/bin/bash

# This script is used to setup the basic essentials for the container

# Update the system
apt-get update && apt-get upgrade -y

# Install the required packages
apt-get install -y --no-install-recommends apt-transport-https ca-certificates git sudo tzdata nano build-essential less 

# Clean up the apt cache
apt-get clean

# Set the timezone
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

# Copy the motd file to the /etc directory
cp /var/scripts/motd /etc/motd

# Append this logic to /etc/bash.bashrc or the user's ~/.bashrc
echo 'if [ ! -f "$HOME/.motd_shown" ]; then' >> /etc/bash.bashrc
echo '    cat /etc/motd  # Display the MOTD' >> /etc/bash.bashrc
echo '    touch "$HOME/.motd_shown"  # Create a marker file' >> /etc/bash.bashrc
echo 'fi' >> /etc/bash.bashrc


# Create the zealphp user
useradd -m -s /bin/bash zealphp

# Add the zealphp user to the sudoers
echo "zealphp ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/zealphp
chmod 0440 /etc/sudoers.d/zealphp

# Set the workdir
mkdir -p /home/zealphp/app

# Change the ownership of the workdir
chown zealphp:zealphp /home/zealphp/app

# Execute the setup script for zealphp
echo 'y' | bash /var/scripts/envsetup.sh

# Cammand for zealphp manual

# Copy the zealphp-manual.sh script to the /usr/local/bin directory
chmod +x /var/scripts/zealphp-manual.sh
sudo cp /var/scripts/zealphp-manual.sh /usr/local/bin/zealphp

# Change the working directory
cd /home/zealphp/app
