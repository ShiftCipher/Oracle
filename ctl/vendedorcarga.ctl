load data
infile "Y:\Documents\Oracle\Planos\vendedor.csv"
insert
into table vendedor
fields terminated by ","
trailing nullcols
(codven,
nomven
)
