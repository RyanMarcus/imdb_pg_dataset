sudo mkdir -p /media/data
sudo mkfs.ext4 -F /dev/sdb1
sudo mount /dev/sdb1 /media/data

pacman -Syu --noconfirm
pacman -S postgresql llvm-libs parted wget --noconfirm
 
 
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
sed -i 's/shared_buffers = 128MB/shared_buffers = 12000MB/g' /media/data/pg_data/data/postgresql.conf
 
systemctl restart postgresql
 
 
wget -O /media/data/imdb_pg11 --progress=dot:giga https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/2QYZBT/TGYUNU
echo "Going to load the database... this might take a few minutes..."
pg_restore -d imdb -U imdb --clean --if-exists -v /media/data/imdb_pg11
psql -U imdb -d imdb -c "analyze;"
 
#reboot # get the latest kernel

