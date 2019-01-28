# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)
library(janitor)
library(lubridate)
library(hms)

# Data Kecelakaan Transportasi --------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-20T12%3A08%3A25.647Z/data-bencana-kecelakaan-transportasi-2011-2014.csv", destfile = "data-raw/infrastruktur/ifr_kecelakaan_transportasi.csv")

ifr_kecelakaan_transportasi <- read_csv("data-raw/infrastruktur/ifr_kecelakaan_transportasi.csv")
ifr_kecelakaan_transportasi
ifr_kecelakaan_transportasi <-
  ifr_kecelakaan_transportasi %>%
  clean_names() %>%
  mutate(
    tanggal = mdy(tanggal),
    jam = str_remove_all(jam, " "),
    jam = str_extract(jam, "[0-9]{2}(:|[.])([0-9]{2}|[0-9]{2}(:|[.])[0-9]{2})(WIB|WITA|WIT)$"),
    zona_waktu = str_extract(jam, "(WIB|WITA|WIT)$"),
    jam = str_remove_all(jam, "(WIB|WITA|WIT)$"),
    jam = str_replace_all(jam, "[.]", ":"),
    jam = parse_hm(jam)
  ) %>%
  select(-no) %>%
  select(bencana, tanggal, jam, zona_waktu, everything())
ifr_kecelakaan_transportasi
use_data(ifr_kecelakaan_transportasi, overwrite = TRUE)

