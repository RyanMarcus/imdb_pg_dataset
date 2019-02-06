pacman -Syu --noconfirm
pacman -S parted wget git unzip base-devel --noconfirm


# create the data partition
rm -rf /media/data/pg_data
mkdir -p /media/data/pg_data
chgrp -R vagrant /media
chmod -R g+rwx /media
chown -R vagrant /media/data/pg_data
chmod -R g-rwx /media/data/pg_data
chmod -R o-rwx /media/data/pg_data

cp /vagrant/pg_hint_plan11-1.3.4.tar.gz .
cp /vagrant/postgresql-11.1.tar.gz .

tar xzvf postgresql-11.1.tar.gz
tar xzvf pg_hint_plan11-1.3.4.tar.gz

cd postgresql-11.1
./configure && make -j 2
sudo make install
cd ..
export PATH=$PATH:/usr/local/pgsql/bin/

cd pg_hint_plan11-1.3.4
make
sudo make install
cd ..

sudo mkdir /run/postgresql
sudo chown vagrant /run/postgresql/

su vagrant << EOF
initdb --locale en_US.UTF-8 -E UTF8 -D '/media/data/pg_data'
pg_ctl -D /media/data/pg_data/ -l /home/vagrant/logfile start

createuser imdb -d -s
createdb imdb

 
# very unsafe config. allow any remote connection.
sed -i 's/127.0.0.1\/32/0.0.0.0\/0/g' /media/data/pg_data/pg_hba.conf
 
echo "listen_addresses = '*'" >> /media/data/pg_data/postgresql.conf
sed -i 's/shared_buffers = 128MB/shared_buffers = 4096MB/g' /media/data/pg_data/postgresql.conf
 
pg_ctl -D /media/data/pg_data/ restart
 
wget -O /media/data/pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv /media/data/pg_imdb.tar -C /media/data/
 
echo "Going to load the database... this might take a few minutes..."
pg_restore -v -d imdb -U imdb /media/data/pg_imdb/

pg_ctl -D /media/data/pg_data stop

cp /vagrant/postgres.service /etc/systemd/system/
systemctl enable postgres
systemctl start postgres

 
EOF
#reboot # get the latest kernel
