load data
infile "Y:\Documents\Oracle\Planos\conductor.csv"
insert
into table conductor
fields terminated by ","
trailing nullcols
(codcon,
nomcon
)
