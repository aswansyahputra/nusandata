# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)
library(janitor)

# Daftar Tunggu Haji ------------------------------------------------------

download.file("http://data.go.id//dataset/388f5836-f1a6-4581-b830-5ca91ed22479/resource/da3618a9-78c6-46f7-bc0b-bdfebb0a2a5d/download/processeddaftartungguhajiper2014.csv", destfile = "data-raw/birokrasi/brk_haji.csv")

brk_haji <- read_csv("data-raw/birokrasi/brk_haji.csv")
brk_haji
brk_haji <-
  brk_haji %>%
  select(-latitude, -longitude, -kode_daerah)
brk_haji
use_data(brk_haji, overwrite = TRUE)

# Capaian dari Pengadaan Kementerian Lembaga ------------------------------

download.file("http://data.go.id/dataset/0982201e-f92e-40f2-8611-ae741af12575/resource/11c9f05f-2400-46d1-beaa-e5eaff8113e8/download/processedteppatargetcapaianpengadaankl20122013.csv", destfile = "data-raw/birokrasi/brk_capaian_lembaga.csv")

brk_capaian_lembaga <- read_csv("data-raw/birokrasi/brk_capaian_lembaga.csv")
brk_capaian_lembaga
brk_capaian_lembaga <-
  brk_capaian_lembaga %>%
  clean_names()
brk_capaian_lembaga
use_data(brk_capaian_lembaga, overwrite = TRUE)


#  Capaian dari Pengadaan Pemerintah Provinsi -----------------------------

download.file("http://data.go.id/dataset/6b79bdfd-308f-49a0-9bb0-7e004df3ec54/resource/63f01f7c-19e6-4656-91f5-3e995e5701ef/download/processedteppatargetcapaianpengadaanprovinsi20122013.csv", destfile = "data-raw/birokrasi/brk_capaian_provinsi.csv")

brk_capaian_provinsi <- read_csv("data-raw/birokrasi/brk_capaian_provinsi.csv")
brk_capaian_provinsi
brk_capaian_provinsi <-
  brk_capaian_provinsi %>%
  select(-kode_provinsi, -latitude, -longitude) %>%
  clean_names()
brk_capaian_provinsi
use_data(brk_capaian_provinsi, overwrite = TRUE)
