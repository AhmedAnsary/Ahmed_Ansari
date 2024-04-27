#!/bin/bash
#create DevTeam user
sudo useradd -m -s /bin/bash -c "DevTeam User" DevTeam

# Set password for DevTeam user
echo "p1234" | sudo passwd --stdin DevTeam

# Create OpsTeam user
sudo useradd -m -s /bin/bash -c "OpsTeam User" OpsTeam

# Set password for OpsTeam user
echo "p1234" | sudo passwd --stdin OpsTeam

# Add both users to the "webAdmins" group
sudo groupadd webAdmins
sudo usermod -aG webAdmins DevTeam
sudo usermod -aG webAdmins OpsTeam

# Display a message indicating successful user creation
echo "Users DevTeam and OpsTeam created successfully."
~
