load data
infile "Y:\Documents\Oracle\Planos\cabecera.csv"
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
