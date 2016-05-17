load data
infile "Y:\Documents\Oracle\Planos\cliente.csv"
insert into table cliente
fields terminated by ","
trailing nullcols
(codcli,
apecli,
nomcli,
dircli
)
