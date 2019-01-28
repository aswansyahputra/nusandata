
# nusandata

Paket `nusandata` ini bertujuan untuk menghimpun data dari [Portal Satu
Data Indonesia](https://data.go.id/) dan membuatnya agar dapat digunakan
sebagai paket di R.

## Cara pemasangan

``` r
devtools::install_github("aswansyahputra/nusandata")
```

## Penamaan dataset

Dataset disajikan dengan format `kode_data`. `kode` merupakan singkatan
dari kategori data, yaitu sebagai berikut:

  - `pgn` Pangan
  - `eng` Energi
  - `mrt` Maritim
  - `sht` Kesehatan
  - `ddk` Pendidikan

## Dataset tersedia

Dataset yang telah tersedia dapat dilihat dengan menjalankan kode
`data(package = "nusandata")`.

``` r
data(package = "nusandata")
```

## Code of conduct

Please note that the `nusandata` project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
