load data
infile "C:\Oracle\Data\csv\cliente.csv"
insert into table cliente
fields terminated by ","
trailing nullcols
(codcli,
apecli,
nomcli,
dircli
)
