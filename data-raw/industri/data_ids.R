# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)
library(janitor)

# Perkembangan Usaha Mikro Kecil dan Menengah (UMKM)  ---------------------

download.file("http://data.go.id/storage/f/2014-03-19T03%3A05%3A50.444Z/processed-data-umkm-1997-2012.csv", destfile = "data-raw/industri/ids_umkm.csv")

ids_umkm <- read_csv("data-raw/industri/ids_umkm.csv")
ids_umkm
ids_umkm <-
  ids_umkm %>%
  select(-satuan) %>%
  mutate(
    indikator  = str_remove_all(indikator, "UMKM"),
    indikator = factor(indikator, levels = unique(indikator))
  ) %>%
  spread(indikator, nilai,) %>%
  clean_names() %>%
  rename(sumbangan_pdb = sumbangan_pdb_harga_konstan)
ids_umkm
use_data(ids_umkm, overwrite = TRUE)

#  Data Kecelakaan Industri -----------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-20T12%3A06%3A28.150Z/data-bencana-kecelakaan-industri-2011-2013.csv", destfile = "data-raw/industri/ids_kecelakaan.csv")

ids_kecelakaan <- read_csv("data-raw/industri/ids_kecelakaan.csv", na = c("", " ", "-"))
ids_kecelakaan
ids_kecelakaan <-
  ids_kecelakaan %>%
  clean_names() %>%
  mutate(
    tanggal = mdy(tanggal),
    jam = str_replace_all(jam, "[.]", ":"),
    jam = str_remove_all(jam, "\\sWIB$"),
    jam = parse_hm(jam)
  ) %>%
  mutate_at(vars(korban:keterangan), funs(str_to_lower(.))) %>%
  select(-no)
ids_kecelakaan
use_data(ids_kecelakaan, overwrite = TRUE)
