# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)

# Tempat Pembuangan Akhir Tinja Rumah Tangga Miskin -----------------------

download.file("http://data.go.id/storage/f/2014-02-26T05%3A30%3A55.205Z/processed-jumlah-pembuangan-akhir-rumah-tangga-30persen-termiskin-indonesia-perjuli2012.csv", destfile = "data-raw/kesehatan/sht_tpa_tinja.csv")

sht_tpa_tinja <- read_csv("data-raw/kesehatan/sht_tpa_tinja.csv")
sht_tpa_tinja
sht_tpa_tinja <-
  sht_tpa_tinja %>%
  select(-kode_provinsi)
sht_tpa_tinja
use_data(sht_tpa_tinja, overwrite = TRUE)


# Status Kepemilikan Fasilitas Tempat Buang Air Besar ---------------------


download.file("http://data.go.id/storage/f/2014-02-26T06%3A17%3A32.911Z/processed-jumlah-status-jamban-rumah-tangga-30persen-termiskin-indonesia-perjuli2012.csv", destfile = "data-raw/kesehatan/sht_jamban.csv")

sht_jamban <- read_csv("data-raw/kesehatan/sht_jamban.csv")
sht_jamban
sht_jamban <-
  sht_jamban %>%
  select(-kode_provinsi)
sht_jamban
use_data(sht_jamban, overwrite = TRUE)


