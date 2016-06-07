load data
infile "C:\Oracle\Data\csv\cabecera.csv"
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
