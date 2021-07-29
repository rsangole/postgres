# Quick script to check if things are working fine

library(DBI)
library(magrittr)

con <- DBI::dbConnect(
  drv = RPostgres::Postgres(),
  dbname = "anomaly",
  host = "db", # this needs to be the name of the postgres service
               # (line 3 in docker-compose.yml)
  user = "rahul",
  password = "pass",
  port = 5432
)

DBI::dbWriteTable(con, "mtcars", mtcars, overwrite = T)

con %>% 
  DBI::dbListTables()

con %>% 
  dplyr::tbl("mtcars")

con %>% 
  DBI::dbListFields("mtcars")

# ---