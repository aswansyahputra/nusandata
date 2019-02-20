# Aktivasi Paket ----------------------------------------------------------

library(tidyverse)
library(jsonlite)
library(hms)

# Transkrip Debat Capres 1 2019 -------------------------------------------

download.file("https://s3-ap-southeast-1.amazonaws.com/debatcapres/release/debat-capres-1a.json", destfile = "data-raw/teks/debat_capres1_2019.json")

debat_capres1_2019 <- fromJSON("data-raw/teks/debat_capres1_2019.json")

tks_debatcapres1_2019 <-
  debat_capres1_2019$transkrip %>%
  as_tibble() %>%
  select(-id) %>%
  mutate(
    # time = parse_hm(time),
    speaker  = str_squish(speaker),
    speaker = str_to_title(speaker),
    speaker = recode(speaker, "Jokowi Widodo" = "Joko Widodo")
  ) %>%
  rename(
    waktu = time,
    penutur = speaker
  )
tks_debatcapres1_2019
use_data(tks_debatcapres1_2019, overwrite = TRUE)


# Transkrip Debat Capres 2 2019 -------------------------------------------

download.file("https://s3-ap-southeast-1.amazonaws.com/debatcapres/release/debat-capres-2h.json", destfile = "data-raw/teks/debat_capres2_2019.json")

debat_capres2_2019 <- fromJSON("data-raw/teks/debat_capres2_2019.json")

tks_debatcapres2_2019 <-
  debat_capres2_2019$transkrip %>%
  as_tibble() %>%
  select(-id) %>%
  mutate(
    # time = parse_hm(time),
    speaker  = str_squish(speaker),
    speaker = str_to_title(speaker)
  ) %>%
  rename(
    waktu = time,
    penutur = speaker
  )
tks_debatcapres2_2019
use_data(tks_debatcapres2_2019, overwrite = TRUE)
