# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)

# Total Nilai dan Berat Ekspor berdasarkan Pelabuhan per Bulan ------------

download.file("http://data.go.id/storage/f/2014-04-27T13%3A11%3A03.506Z/processed-ekspor-per-pelabuhan-1999-2014.csv", destfile = "data-raw/maritim/mrt_ekspor.csv")

mrt_ekspor <- read_csv("data-raw/maritim/mrt_ekspor.csv")
mrt_ekspor
use_data(mrt_ekspor, overwrite = TRUE)



# Total Nilai dan Berat Impor berdasarkan Pelabuhan per Bulan -------------

download.file("http://data.go.id/storage/f/2014-04-27T13%3A22%3A16.482Z/processed-impor-per-pelabuhan-1999-2014.csv", destfile = "data-raw/maritim/mrt_impor.csv")

mrt_impor <- read_csv("data-raw/maritim/mrt_impor.csv")
mrt_impor
use_data(mrt_impor, overwrite = TRUE)


