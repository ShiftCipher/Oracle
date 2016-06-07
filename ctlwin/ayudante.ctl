load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\ayudante.csv"
insert
into table ayudante
fields terminated by ","
trailing nullcols
(codayu,
nomayu
)
