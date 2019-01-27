
# Unduh data --------------------------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-07T11%3A46%3A18.317Z/processed-rumah-tangga-usaha-tani-per-luas-lahan-2003-2013.csv", destfile = "data-raw/pangan/pgn_rttani.csv")

# Membersihkan data -------------------------------------------------------


library(tidyverse)
library(lubridate)
library(hms)

pgn_rttani <- read_csv("data-raw/pangan/pgn_rttani.csv")
pgn_rttani <-
  pgn_rttani %>%
  rename(luas_lahan = golongan_luas_lahan)
pgn_rttani

use_data(pgn_rttani)
