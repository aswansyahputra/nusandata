# Unduh data --------------------------------------------------------------


download.file("http://data.go.id/storage/f/2014-04-20T12%3A16%3A17.289Z/data-bencana-kekeringan-2012-2013.csv", destfile = "data-raw/pangan/pgn_kekeringan.csv")


# Membersihkan data -------------------------------------------------------


library(tidyverse)
library(lubridate)
library(hms)

pgn_kekeringan <- read_csv("data-raw/pangan/pgn_kekeringan.csv", na = c("", " ", "-"))
pgn_kekeringan <-
  pgn_kekeringan %>%
  janitor::clean_names() %>%
  mutate(
    tanggal = mdy(tanggal),
    jam = str_replace_all(jam, "[.]", ":"),
    jam = str_remove_all(jam, "\\sWIB$"),
    jam = parse_hm(jam)
  ) %>%
  mutate_at(vars(korban:keterangan), funs(str_to_lower(.))) %>%
  select(-no)
pgn_kekeringan
use_data(pgn_kekeringan)

