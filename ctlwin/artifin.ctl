load data
infile "C:\Oracle\Data\csv\artifin.csv"
insert
into table artifin
fields terminated by ";"
trailing nullcols
(
id,
barcode,
description,
utilities_by_package,
packages_by_box,
state,
price_by_unity,
price_by_box,
iva,
stock,
box_cost,
price_by_package,
package_cost,
unity_cost,
date_ven DATE 'DD-MM-YYYY',
stock_min,
second_barcode,
third_barcode
)
