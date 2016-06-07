load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\conductor.csv"
insert
into table conductor
fields terminated by ","
trailing nullcols
(codcon,
nomcon
)
