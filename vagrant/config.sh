pacman -Syu --noconfirm
pacman -S postgresql parted wget --noconfirm


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
sed -i 's/shared_buffers = 128MB/shared_buffers = 4096MB/g' /media/data/pg_data/data/postgresql.conf

systemctl restart postgresql

wget -O /media/data/pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv /media/data/pg_imdb.tar -C /media/data/

echo "Going to load the database... this might take a few minutes..."
pg_restore -v -d imdb -U imdb /media/data/pg_imdb/

#reboot # get the latest kernel
