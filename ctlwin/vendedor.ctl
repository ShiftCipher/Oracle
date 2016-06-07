load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\vendedor.csv"
insert
into table vendedor
fields terminated by ","
trailing nullcols
(codven,
nomven
)
