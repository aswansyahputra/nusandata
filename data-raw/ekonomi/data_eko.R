# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)

# Belanja Pemerintah Indonesia berdasarkan Realisasi APBN -----------------

download.file("http://data.go.id/storage/f/2014-03-14T03%3A43%3A23.072Z/processed-realisasi-apbn-belanja-indonesia-1990-2013.csv", destfile = "data-raw/ekonomi/eko_realisasi_apbn.csv")

eko_realisasi_apbn <- read_csv("data-raw/ekonomi/eko_realisasi_apbn.csv")
eko_realisasi_apbn
use_data(eko_realisasi_apbn, overwrite = TRUE)



# Produk Domestik Bruto (PDB) Indonesia berdasarkan Pengeluaran da --------


download.file("http://data.go.id/storage/f/2014-03-14T05%3A18%3A53.710Z/processed-pdb-pengeluaran-harga-berlaku-1990-1999.csv", destfile = "data-raw/ekonomi/eko_produk_domestik_bruto_1.csv")

download.file("http://data.go.id/storage/f/2014-03-14T07%3A40%3A35.840Z/processed-pdb-pengeluaran-harga-berlaku-2000-2013.csv", destfile = "data-raw/ekonomi/eko_produk_domestik_bruto_2.csv")

eko_produk_domestik_bruto_1 <- read_csv("data-raw/ekonomi/eko_produk_domestik_bruto_1.csv")
eko_produk_domestik_bruto_2 <- read_csv("data-raw/ekonomi/eko_produk_domestik_bruto_2.csv")
eko_produk_domestik_bruto <-
  bind_rows(eko_produk_domestik_bruto_1, eko_produk_domestik_bruto_2)
eko_produk_domestik_bruto
use_data(eko_produk_domestik_bruto, overwrite = TRUE)
