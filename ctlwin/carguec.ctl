load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\carguec.csv"
insert
into table carguec
fields terminated by ","
trailing nullcols
(carcnum,
carcfec DATE 'YYYY-MM-DD',
carccar,
carcayu,
carccon,
carcdat DATE 'YYYY-MM-DD',
carcest
)
