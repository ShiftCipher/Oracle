load data
infile "Y:\Documents\Oracle\Planos\cargued.csv"
insert
into table cargued
fields terminated by ","
trailing nullcols
(carnum,
cardoc,
cartrn,
carest
)
