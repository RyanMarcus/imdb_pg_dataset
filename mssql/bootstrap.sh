#!/usr/bin/env bash
# Part of Vagrant virtual environments for SQL Server 2017 on Ubuntu Linux
#
# Setup environment configuration
export ACCEPT_EULA="Y"
export MSSQL_PID="Developer"
export MSSQL_SA_PASSWORD="Password123"
export DEBIAN_FRONTEND="noninteractive"
# Ensure hostname is recognised
sudo sed -i "s/^127\.0\.0\.1.*/127.0.0.1 localhost $HOSTNAME/g" /etc/hosts
# Install pre-requisites
sudo apt-get -y -q update
## Ubuntu 16.04 does not deliver add-apt-repository by default
sudo apt-get -y -q install curl software-properties-common
# Pre-installation
curl -s -S --retry 3 https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
## Repository Microsoft SQL Server
sudo add-apt-repository "$(curl -s -S --retry 3 https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
## Repository SQL Server command-line tools
sudo add-apt-repository "$(curl -s -S --retry 3 https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
sudo apt-get -y -q update
sudo -E bash -c 'apt-get -y -q install mssql-server'
sudo -E bash -c 'apt-get -y -q install mssql-tools'
# Clean up
sudo apt-get -y -q autoremove
sudo apt-get -y -q clean
# Post-installation
echo "SQLServer: running /opt/mssql/bin/mssql-conf -n setup"
echo "SQLServer: MSSQL_PID=$MSSQL_PID"
echo "SQLServer: MSSQL_SA_PASSWORD=$MSSQL_SA_PASSWORD"
sudo -E bash -c '/opt/mssql/bin/mssql-conf -n setup'
sudo /opt/mssql/bin/mssql-conf set telemetry.customerfeedback false
echo "SQLServer: restarting"
sudo systemctl stop mssql-server
sudo systemctl start mssql-server
sudo systemctl status mssql-server
echo "SQLServer: adding /opt/mssql-tools/bin to PATH in ~/.bashrc and ~/.bash_profile"
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
echo "SQLServer: Running sqlcmd -Q SELECT @@version"
export PATH="$PATH:/opt/mssql-tools/bin"
sqlcmd -S localhost -U SA -P 'Password123' -Q "SELECT @@version;"
echo "SQLServer: Guest IP address:"
ip addr show|grep -w inet
echo "Bootstrap: DONE"

echo "Loading the IMDB database..."
/vagrant/restore.sh
