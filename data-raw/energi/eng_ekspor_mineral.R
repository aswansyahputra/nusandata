
# Unduh data --------------------------------------------------------------

download.file("http://data.go.id/storage/f/2014-04-30T07%3A59%3A19.980Z/processed-ekspor-mineral-2000-2010.csv", destfile = "data-raw/energi/ekspor_mineral.csv")

# Membersihkan data -------------------------------------------------------


library(tidyverse)
library(lubridate)
library(hms)

eng_ekspor_mineral <- read_csv("data-raw/energi/eng_ekspor_mineral.csv")
eng_ekspor_mineral
use_data(eng_ekspor_mineral)
