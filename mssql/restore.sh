if [ ! -f /vagrant/imdb.bak.tar.gz ]; then
    echo "Downloading IMDB data archive"
    wget http://cs.brandeis.edu/~rcmarcus/mssql_imdb.bak.tar.gz -O /vagrant/imdb.bak.tar.gz
fi

if [ ! -f /vagrant/imdb.bak ]; then
    echo "Decompressing IMDB data archive"
    tar xzvf /vagrant/imdb.bak.tar.gz -C /vagrant/
fi

echo "Copying the archive"
sudo mkdir -p /var/opt/mssql/backup
sudo cp /vagrant/imdb.bak /var/opt/mssql/backup/

echo "Loading archive into MSSQL"
sqlcmd -S localhost -U SA -P 'Password123' -i /vagrant/restore.sql

