# Aktivasi paket ----------------------------------------------------------

library(tidyverse)
library(usethis)
library(janitor)
library(lubridate)
library(hms)


# Data Bencana Kekeringan -------------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-20T12%3A16%3A17.289Z/data-bencana-kekeringan-2012-2013.csv", destfile = "data-raw/pangan/pgn_kekeringan.csv")

pgn_kekeringan <- read_csv("data-raw/pangan/pgn_kekeringan.csv", na = c("", " ", "-"))
pgn_kekeringan
pgn_kekeringan <-
  pgn_kekeringan %>%
  clean_names() %>%
  mutate(
    tanggal = mdy(tanggal),
    jam = str_replace_all(jam, "[.]", ":"),
    jam = str_remove_all(jam, "\\sWIB$"),
    jam = parse_hm(jam)
  ) %>%
  mutate_at(vars(korban:keterangan), funs(str_to_lower(.))) %>%
  select(-no)
pgn_kekeringan
use_data(pgn_kekeringan, overwrite = TRUE)


# Rumah Tangga Usaha Tani -------------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-07T11%3A46%3A18.317Z/processed-rumah-tangga-usaha-tani-per-luas-lahan-2003-2013.csv", destfile = "data-raw/pangan/pgn_rttani.csv")

pgn_rttani <- read_csv("data-raw/pangan/pgn_rttani.csv")
pgn_rttani <-
  pgn_rttani %>%
  rename(luas_lahan = golongan_luas_lahan)
pgn_rttani
use_data(pgn_rttani, overwrite = TRUE)
