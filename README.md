# IMDB / JOB Workload

This repository contains a Vagrant machine that automatically pulls down and imports the IMDB dataset from that paper [How Good are Query Optimizers, Really?](http://www.vldb.org/pvldb/vol9/p204-leis.pdf). Note that, upon provisioning, the VM will download 1.2GB+ of data.

It will create a VM running Arch Linux, upgrade it, install the latest version of Postgres, configure itself to use 16GB of RAM (12GB for the Postgres `shared_buffers`) and 4 CPU cores, create a 100GB disk image to hold the data, and, finally, download and load an archive. It could break at any moment.

Note: if you would just like to download a Postgres `pg_dump` of the IMDB dataset, you can get it here: [https://doi.org/10.7910/DVN/2QYZBT](https://doi.org/10.7910/DVN/2QYZBT)

To use, first install the [persistent storage Vagrant plugin](https://github.com/kusnier/vagrant-persistent-storage):

```bash
vagrant plugin install vagrant-persistent-storage
```

Next, modify `vagrant/Vagrantfile` to set a path to where you would like the VDI containing the database to go.

```ruby
config.persistent_storage.enabled = true
config.persistent_storage.location = "/PATH/TO/STORAGE/LOCATION.vdi"
config.persistent_storage.size = 100000
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

If you use the CEB datasets, please cite the Flow Loss paper:

> Parimarjan Negi, Ryan Marcus, Andreas Kipf, Hongzi Mao, Nesime Tatbul, Tim Kraska, and Mohammad Alizadeh. 2021. Flow-loss: learning cardinality estimates that matter. Proc. VLDB Endow. 14, 11 (July 2021), 2019–2032. https://doi.org/10.14778/3476249.3476259


```
@article{flowloss,
author = {Negi, Parimarjan and Marcus, Ryan and Kipf, Andreas and Mao, Hongzi and Tatbul, Nesime and Kraska, Tim and Alizadeh, Mohammad},
title = {Flow-Loss: Learning Cardinality Estimates That Matter},
year = {2021},
issue_date = {July 2021},
publisher = {VLDB Endowment},
volume = {14},
number = {11},
issn = {2150-8097},
url = {https://doi.org/10.14778/3476249.3476259},
doi = {10.14778/3476249.3476259},
journal = {Proc. VLDB Endow.},
month = {jul},
pages = {2019–2032},
numpages = {14}
}
```

If you use the JOB extended queries, please cite the Neo paper:

> Ryan Marcus, Parimarjan Negi, Hongzi Mao, Chi Zhang, Mohammad Alizadeh, Tim Kraska, Olga Papaemmanouil, and Nesime Tatbul. 2019. Neo: a learned query optimizer. Proc. VLDB Endow. 12, 11 (July 2019), 1705–1718. https://doi.org/10.14778/3342263.3342644


```
@article{neo,
author = {Marcus, Ryan and Negi, Parimarjan and Mao, Hongzi and Zhang, Chi and Alizadeh, Mohammad and Kraska, Tim and Papaemmanouil, Olga and Tatbul, Nesime},
title = {Neo: A Learned Query Optimizer},
year = {2019},
issue_date = {July 2019},
publisher = {VLDB Endowment},
volume = {12},
number = {11},
issn = {2150-8097},
url = {https://doi.org/10.14778/3342263.3342644},
doi = {10.14778/3342263.3342644},
journal = {Proc. VLDB Endow.},
month = {jul},
pages = {1705–1718},
numpages = {14}
}
```

If you use the JOB-D queries, please cite the HybridQO paper (no affiliation):

```
@article{DBLP:journals/pvldb/YuC0L22,
  author       = {Xiang Yu and
                  Chengliang Chai and
                  Guoliang Li and
                  Jiabin Liu},
  title        = {Cost-based or Learning-based? {A} Hybrid Query Optimizer for Query
                  Plan Selection},
  journal      = {Proc. {VLDB} Endow.},
  volume       = {15},
  number       = {13},
  pages        = {3924--3936},
  year         = {2022},
  url          = {https://www.vldb.org/pvldb/vol15/p3924-li.pdf},
  doi          = {10.14778/3565838.3565846},
  timestamp    = {Mon, 23 Oct 2023 15:31:40 +0200},
  biburl       = {https://dblp.org/rec/journals/pvldb/YuC0L22.bib},
  bibsource    = {dblp computer science bibliography, https://dblp.org}
}
```