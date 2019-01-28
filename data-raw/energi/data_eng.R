# Mengaktifkan paket ------------------------------------------------------

library(tidyverse)
library(usethis)

# Ekspor Mineral ----------------------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-30T07%3A59%3A19.980Z/processed-ekspor-mineral-2000-2010.csv", destfile = "data-raw/energi/eng_ekspor_mineral.csv")

eng_ekspor_mineral <- read_csv("data-raw/energi/eng_ekspor_mineral.csv")
eng_ekspor_mineral
use_data(eng_ekspor_mineral, overwrite = TRUE)

# Penjualan Domestik Batubara ---------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-30T07%3A47%3A25.930Z/processed-penjualan-domestik-batubara-2003-2010.csv", destfile = "data-raw/energi/eng_domestik_batubara.csv")

eng_domestik_batubara <- read_csv("data-raw/energi/eng_domestik_batubara.csv")
eng_domestik_batubara
use_data(eng_domestik_batubara, overwrite = TRUE)


