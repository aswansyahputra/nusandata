#' Belanja Pemerintah Indonesia berdasarkan Realisasi APBN
#'
#' Dataset ini berisi total nilai belanja Pemerintah Indonesia berdasarkan realisasi APBN. Catatan: 1. Sampai dengan tahun 2004, realisasi menggunakan angka Perhitungan Anggaran Negara (PAN); 2. Sejak tahun 2005, menggunakan angka Laporan Keuangan Pemerintah Pusat (LKPP); 3. Sejak Januari 2012, data sudah disesuaikan dengan publikasi resmi KemenKeu; 4. Data Pengeluaran Rutin Lainnya sudah termasuk data Tambahan Anggaran Pemerintah Pusat sebesar Rp 13.460 miliar
#'
#' @format Dataframe dengan 408 baris dan 5 kolom
#'
#' \describe{
#'   \item{tahun}{Tahun APBN}
#'   \item{pos_belanja}{Pos Belanja pada APBN (Belanja Pemerintah Pusat atau Anggaran Belanja untuk Daerah)}
#'   \item{tipe_pengeluaran}{Tipe dari pengeluaran}
#'   \item{keterangan_pengeluaran}{Keterangan mengenai pengeluaran tersebut}
#'   \item{nilai}{Nilai dari Belanja tersebut (dalam Milyar Rupiah)}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/belanja-pemerintah-indonesia-berdasarkan-realisasi-apbn}
"eko_realisasi_apbn"

#' Produk Domestik Bruto (PDB) Indonesia berdasarkan Pengeluaran dan Harga Berlaku
#'
#' Dataset ini berisi mengenai komponen PDB Indonesia berdasarkan pengeluaran yang penghitungannya didasarkan pada harga berlaku
#'
#' @format Dataframe dengan 625 baris dan 4 kolom
#'
#' \describe{
#'   \item{tahun}{Tahun}
#'   \item{kuartal}{Kuartal}
#'   \item{jenis_pengeluaran}{Jenis Pengeluaran}
#'   \item{nilai}{Nilai hasil dari jenis pengeluaran tersebut(berdasarkan harga berlaku - dalam Miliar Rupiah)}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/produk-domestik-bruto-pdb-indonesia-berdasarkan-pengeluaran-dan-harga-berlaku}
"eko_produk_domestik_bruto"






