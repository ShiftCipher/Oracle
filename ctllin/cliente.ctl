load data
infile "/home/oracle/database/oracle/csv/cliente.csv"
insert into table cliente
fields terminated by ","
trailing nullcols
(codcli,
apecli,
nomcli,
dircli
)
