load data
infile "X:\Apps\Editorial\Reference\Oracle\csv\cliente.csv"
insert into table cliente
fields terminated by ","
trailing nullcols
(codcli,
apecli,
nomcli,
dircli
)
