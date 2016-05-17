load data
infile "Y:\Documents\Oracle\Planos\ayudante.csv"
insert
into table ayudante
fields terminated by ","
trailing nullcols
(codayu,
nomayu
)
