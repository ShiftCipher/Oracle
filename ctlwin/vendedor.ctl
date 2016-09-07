load data
infile "C:\Oracle\Data\csv\vendedor.csv"
insert
into table vendedor
fields terminated by ","
trailing nullcols
(codven,
nomven
)
