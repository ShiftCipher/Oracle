load data
infile "C:\Oracle\Data\csv\ayudante.csv"
insert
into table ayudante
fields terminated by ","
trailing nullcols
(codayu,
nomayu
)
