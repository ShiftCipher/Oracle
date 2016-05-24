load data
infile "/home/oracle/database/oracle/csv/cabecera.csv"
insert
into table cabecera
fields terminated by ","
trailing nullcols
(cabtrn,
cabdoc,
cabdat DATE 'YYYY-MM-DD',
cabven,
cabcli
)
