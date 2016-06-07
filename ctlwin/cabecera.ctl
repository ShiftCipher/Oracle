load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\cabecera.csv"
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
