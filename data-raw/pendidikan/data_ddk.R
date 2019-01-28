# Mengaktifkan paket ------------------------------------------------------
library(tidyverse)


#  Tingkat Pendidikan Anak Miskin -----------------------------------------

download.file("http://data.go.id/storage/f/2014-02-26T05%3A27%3A56.500Z/processed-jumlah-partisipasi-sekolah-jenis-kelamin-30persen-termiskin-indonesia-perjuli2012.csv", destfile = "data-raw/pendidikan/ddk_tingkat_pendidikan.csv")

ddk_tingkat_pendidikan <- read_csv("data-raw/pendidikan/ddk_tingkat_pendidikan.csv")
ddk_tingkat_pendidikan
ddk_tingkat_pendidikan <-
  ddk_tingkat_pendidikan %>%
  select(-kode_provinsi)
ddk_tingkat_pendidikan
use_data(ddk_tingkat_pendidikan, overwrite = TRUE)


# Siswa Sekolah Menengah Pertama yang Putus Sekolah -----------------------

download.file("http://data.go.id/storage/f/2014-03-19T03%3A01%3A10.113Z/processed-data-putus-sekolah-smp-2008-2011.csv", destfile = "data-raw/pendidikan/ddk_smp_putus_sekolah.csv")

ddk_smp_putus_sekolah <- read_csv("data-raw/pendidikan/ddk_smp_putus_sekolah.csv")
ddk_smp_putus_sekolah
ddk_smp_putus_sekolah <-
  ddk_smp_putus_sekolah %>%
  select(-kode_provinsi)
ddk_smp_putus_sekolah
use_data(ddk_smp_putus_sekolah, overwrite = TRUE)

# Siswa Sekolah Menengah Kejuruan yang Putus Sekolah -----------------------

download.file("http://data.go.id/storage/f/2014-03-19T02%3A59%3A40.456Z/processed-data-putus-sekolah-smk-2008-2011.csv", destfile = "data-raw/pendidikan/ddk_smk_putus_sekolah.csv")

ddk_smk_putus_sekolah <- read_csv("data-raw/pendidikan/ddk_smk_putus_sekolah.csv")
ddk_smk_putus_sekolah
ddk_smk_putus_sekolah <-
  ddk_smk_putus_sekolah %>%
  select(-kode_provinsi)
ddk_smk_putus_sekolah
use_data(ddk_smk_putus_sekolah, overwrite = TRUE)

# Siswa Sekolah Menengah Atas yang Putus Sekolah -----------------------

download.file("http://data.go.id/storage/f/2014-03-19T02%3A57%3A47.766Z/processed-data-putus-sekolah-sma-2008-2011.csv", destfile = "data-raw/pendidikan/ddk_sma_putus_sekolah.csv")

ddk_sma_putus_sekolah <- read_csv("data-raw/pendidikan/ddk_sma_putus_sekolah.csv")
ddk_sma_putus_sekolah
ddk_sma_putus_sekolah <-
  ddk_sma_putus_sekolah %>%
  select(-kode_provinsi)
ddk_sma_putus_sekolah
use_data(ddk_sma_putus_sekolah, overwrite = TRUE)

# Siswa Sekolah Dasar yang Putus Sekolah -----------------------

download.file("http://data.go.id/storage/f/2014-03-19T02%3A55%3A57.848Z/processed-data-putus-sekolah-sd-2008-2011.csv", destfile = "data-raw/pendidikan/ddk_sd_putus_sekolah.csv")

ddk_sd_putus_sekolah <- read_csv("data-raw/pendidikan/ddk_sd_putus_sekolah.csv")
ddk_sd_putus_sekolah
ddk_sd_putus_sekolah <-
  ddk_sd_putus_sekolah %>%
  select(-kode_provinsi)
ddk_sd_putus_sekolah
use_data(ddk_sd_putus_sekolah, overwrite = TRUE)
