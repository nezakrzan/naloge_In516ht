require(dplyr)
require(tidyr)
require(readr)
require(readxl)

sl <- locale("sl", decimal_mark=",", grouping_mark=".")

a1 <- read_csv2("podatki/1a.csv",
                col_names=c("COMPANYNAME","GROSS SALES"),
                skip=1, na="-",
                locale=locale(encoding="Windows-1250"))

b1 <- read_csv2("podatki/1b.csv",
                col_names=c("COMPANYNAME","GROSS CHANGE", "ABS CHANGE"),
                skip=1, na="-",
                locale=locale(encoding="Windows-1250"))

c1 <- read_csv2("podatki/1c.csv",
                col_names=c("COMPANYNAME","ABS CHANGE(+10k)"),
                skip=1, na="-",
                locale=locale(encoding="Windows-1250"))
