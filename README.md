# IMDB / JOB Workload

This repository contains a Vagrant machine that automatically pulls down and imports the IMDB dataset from that paper [How Good are Query Optimizers, Really?](http://www.vldb.org/pvldb/vol9/p204-leis.pdf). Note that, upon provisioning, the VM will download 1.2GB+ of data.

It will create a VM running Arch Linux, upgrade it, install the latest version of Postgres, configure itself to use 8GB of RAM (4GB for the Postgres `shared_buffers`) and 2 CPU cores, create a 50GB disk image to hold the data, and, finally, download and load an archive. It could break at any moment.

Note: if you would just like to download a Postgres `pg_dump` of the IMDB dataset, you can get it here: [http://cs.brandeis.edu/~rcmarcus/pg_imdb.tar](http://cs.brandeis.edu/~rcmarcus/pg_imdb.tar) (1.2GB).

To use, first install the [persistent storage Vagrant plugin](https://github.com/kusnier/vagrant-persistent-storage):

```bash
vagrant plugin install vagrant-persistent-storage
```

Next, modify `vagrant/Vagrantfile` to set a path to where you would like the VDI containing the database to go.

```ruby
config.persistent_storage.enabled = true
config.persistent_storage.location = "/PATH/TO/STORAGE/LOCATION.vdi"
config.persistent_storage.size = 50000
config.persistent_storage.mountname = 'pg'
config.persistent_storage.filesystem = 'ext4'
config.persistent_storage.mountpoint = '/media/data'
config.persistent_storage.volgroupname = 'myvolgroup'
```

Then, start up the VM:

```bash
cd vagrant
vagrant up
cd ..
```

You can ignore the last few warnings (about `/home/vagrant`). Note that this VM will have an open Postgres server, with a single user, `imdb`, with no password. You don't want to leave it running on a network you don't trust (or without your own firewall).

To connect to the database from your host machine:
```
psql -U imdb -h localhost
```

To run one of the JOB queries:
```
psql -U imdb -h localhost < job/1a.sql
```

## Citation
If you use the JOB dataset, please cite the original authors (no affiliation):
```bibtex
@article{JOB,
  series = {VLDB '15},
  title = {How {{Good Are Query Optimizers}}, {{Really}}?},
  volume = {9},
  issn = {2150-8097},
  doi = {10.14778/2850583.2850594},
  number = {3},
  journal = {Proc. VLDB Endow.},
  author = {Leis, Viktor and Gubichev, Andrey and Mirchev, Atanas and Boncz, Peter and Kemper, Alfons and Neumann, Thomas},
  month = nov,
  year = {2015},
  pages = {204--215}
}
```

If you use this VM or our prepared dataset, please cite our paper as well:
```bibtex
@inproceedings{rejoin,
  address = {Houston, TX},
  series = {aiDM '18},
  title = {Deep {{Reinforcement Learning}} for {{Join Order Enumeration}}},
  shorttitle = {{{ReJOIN}}},
  booktitle = {First {{International Workshop}} on {{Exploiting Artificial Intelligence Techniques}} for {{Data Management}}},
  author = {Marcus, Ryan and Papaemmanouil, Olga},
  month = jun,
  year = {2018}
}
```
