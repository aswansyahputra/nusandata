
# Unduh data --------------------------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-30T07%3A47%3A25.930Z/processed-penjualan-domestik-batubara-2003-2010.csv", destfile = "data-raw/energi/eng_domestik_batubara.csv")

# Membersihkan data -------------------------------------------------------


library(tidyverse)
library(lubridate)
library(hms)

eng_domestik_batubara <- read_csv("data-raw/energi/eng_domestik_batubara.csv")
eng_domestik_batubara
use_data(eng_domestik_batubara)
