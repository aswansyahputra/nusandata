
# nusandata

[![Travis build
status](https://travis-ci.org/aswansyahputra/nusandata.svg?branch=master)](https://travis-ci.org/aswansyahputra/nusandata)
[![Coverage
status](https://codecov.io/gh/aswansyahputra/nusandata/branch/master/graph/badge.svg)](https://codecov.io/github/aswansyahputra/nusandata?branch=master)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

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
  - `ifr` Infrastruktur
  - `mrt` Maritim
  - `sht` Kesehatan
  - `ddk` Pendidikan
  - `eko` Ekonomi dan Keuangan
  - `ids` Industri
  - `wst` Pariwisata
  - `brk` Reformasi Birokrasi

## Dataset tersedia

Beberapa dataset yang telah tersedia adalah sebagai
berikut:

| Data                          | Description                                                                     |
| :---------------------------- | :------------------------------------------------------------------------------ |
| brk\_capaian\_lembaga         | Capaian dari Pengadaan Kementerian Lembaga                                      |
| brk\_capaian\_provinsi        | Capaian dari Pengadaan Pemerintah Provinsi                                      |
| brk\_haji                     | Daftar Tunggu Haji                                                              |
| ddk\_sd\_putus\_sekolah       | Siswa Sekolah Dasar yang Putus Sekolah                                          |
| ddk\_sma\_putus\_sekolah      | Siswa Sekolah Menengah Atas yang Putus Sekolah                                  |
| ddk\_smk\_putus\_sekolah      | Siswa Sekolah Menengah Kejuruan yang Putus Sekolah                              |
| ddk\_smp\_putus\_sekolah      | Siswa Sekolah Menengah Pertama yang Putus Sekolah                               |
| ddk\_tingkat\_pendidikan      | Tingkat Pendidikan Anak Miskin                                                  |
| eko\_produk\_domestik\_bruto  | Produk Domestik Bruto (PDB) Indonesia berdasarkan Pengeluaran dan Harga Berlaku |
| eko\_realisasi\_apbn          | Belanja Pemerintah Indonesia berdasarkan Realisasi APBN                         |
| eng\_domestik\_batubara       | Penjualan Domestik Batu Bara                                                    |
| eng\_ekspor\_mineral          | Hasil Ekspor Mineral                                                            |
| ids\_kecelakaan               | Data Kecelakaan Industri                                                        |
| ids\_umkm                     | Perkembangan Usaha Mikro Kecil dan Menengah (UMKM)                              |
| ifr\_kecelakaan\_transportasi | Data Kecelakaan Transportasi                                                    |
| mrt\_ekspor                   | Total Nilai dan Berat Ekspor berdasarkan Pelabuhan per Bulan                    |
| mrt\_impor                    | Total Nilai dan Berat Impor berdasarkan Pelabuhan per Bulan                     |
| pgn\_kekeringan               | Data Bencana Kekeringan                                                         |
| pgn\_rttani                   | Jumlah Rumah Tangga Usaha Tani                                                  |
| sht\_jamban                   | Status Kepemilikan Fasilitas Tempat Buang Air Besar                             |
| sht\_tpa\_tinja               | Tempat Pembuangan Akhir Tinja Rumah Tangga Miskin                               |

atau jalankan kode `data(package = "nusandata")` untuk mendapatkan
daftar dataset yang telah tersedia di `nusandata`.

## Ucapan terimakasih

Proyek ini dapat terlaksana atas upaya data terbuka yang tersaji di
[Portal Satu Data Indonesia](https://data.go.id).

## Code of conduct

Please note that the `nusandata` project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
