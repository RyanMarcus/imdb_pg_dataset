sudo pacman -Sy --noconfirm
sudo pacman -S reflector --noconfirm

sudo reflector --latest 20 --country US --sort rate --protocol https --save /etc/pacman.d/mirrorlist

sudo mkdir -p /media/data

# get the device ID of the external (it is not consistent)
DEV_ID=/dev/`lsblk -bl -o SIZE,NAME | tail -n +2 | sort -nr | head -n 1 | cut -d' ' -f 2`

echo "Device ID of external storage: $DEV_ID"
sudo mkfs.ext4 -F $DEV_ID
sudo mount $DEV_ID /media/data

echo "$DEV_ID    /media/data    ext4    rw,relatime    0    0" >> /etc/fstab

pacman -Syu --noconfirm
pacman -S git clang llvm base-devel postgresql llvm-libs parted wget --noconfirm



# create the data partition
sudo mkdir -p /media/data/pg_data
sudo chgrp -R postgres /media
sudo chmod -R g+rwx /media
sudo chown -R postgres /media/data/pg_data
sudo chmod -R g-rwx /media/data/pg_data
sudo chmod -R o-rwx /media/data/pg_data
 
sudo sed -i 's/\/var\/lib\/postgres/\/media\/data\/pg_data/g' /usr/lib/systemd/system/postgresql.service
 
 
sudo -u postgres initdb --locale en_US.UTF-8 -E UTF8 -D '/media/data/pg_data/data'
systemctl enable postgresql
systemctl start postgresql
sudo -u postgres createuser imdb -d -s
sudo -u postgres createdb imdb
 
# very unsafe config. allow any remote connection.
sed -i 's/127.0.0.1\/32/0.0.0.0\/0/g' /media/data/pg_data/data/pg_hba.conf
 
echo "listen_addresses = '*'" >> /media/data/pg_data/data/postgresql.conf
sed -i 's/shared_buffers = 128MB/shared_buffers = 4GB/g' /media/data/pg_data/data/postgresql.conf
echo "shared_preload_libraries = 'pg_session_stats'" >> /media/data/pg_data/data/postgresql.conf
echo "pg_session_stats.path = '/media/data/pg_data/pgss.sqlite3'" >> /media/data/pg_data/data/postgresql.conf

systemctl stop postgresql

git clone https://github.com/RyanMarcus/pg_session_stats.git
cd pg_session_stats
make USE_PGXS=1 install
cd
systemctl restart postgresql

git clone https://github.com/zilder/pg_dropcache.git
cd pg_dropcache
make USE_PGXS=1 install
cd
systemctl restart postgresql


# get the archive locally, if we have it
if [ -f "/vagrant/imdb_pg11" ]; then
    echo "Using cached archive"
else
    echo "No cached archive, downloading from WWW"
    wget -O /vagrant/imdb_pg11 --progress=dot:giga https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/2QYZBT/TGYUNU
fi
cp /vagrant/imdb_pg11 /media/data/imdb_pg11


echo "Going to load the database... this might take a few minutes..."
pg_restore -d imdb -U imdb --clean --if-exists -v /media/data/imdb_pg11
psql -U imdb -d imdb -c "analyze;"




#reboot # get the latest kernel

