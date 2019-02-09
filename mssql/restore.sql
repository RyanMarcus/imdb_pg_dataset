RESTORE DATABASE imdb
FROM DISK = '/var/opt/mssql/backup/imdb.bak'
WITH MOVE 'imdb' TO '/var/opt/mssql/data/imdb.mdf',
MOVE 'imdb_Log' TO '/var/opt/mssql/data/imdb_Log.ldf'
GO

RESTORE DATABASE imdb
FROM DISK = '/var/opt/mssql/backup/imdb.bak'
WITH REPLACE
GO

