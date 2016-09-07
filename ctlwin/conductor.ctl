load data
infile "C:\Oracle\Data\csv\conductor.csv"
insert
into table conductor
fields terminated by ","
trailing nullcols
(codcon,
nomcon
)
