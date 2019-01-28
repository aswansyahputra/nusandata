#' Daftar Tunggu Haji
#'
#' Dataset ini berisi daftar tunggu jemaah haji per daerah (provinsi dan kabupaten)
#'
#' @format Dataframe dengan 142 baris dan 5 kolom
#'
#' \describe{
#'   \item{nama_daerah}{Nama Daerah}
#'   \item{kuota}{Kuota}
#'   \item{batas_tahun}{Batas sampai dengan tahun kuota tersebut}
#'   \item{jumlah_pendaftaran}{Jumlah jemaah yang mendaftar}
#'   \item{jumlah_lunas_tunda}{Jumlah jemaah yang lunas tunda}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/daftar-tunggu-haji}
"brk_haji"

#' Capaian dari Pengadaan Kementerian Lembaga
#'
#' Dataset ini berisi persentase dari capaian dari pengadaan di setiap Kementerian/Lembaga
#'
#' @format Dataframe dengan 2088 baris dan 7 kolom
#'
#' \describe{
#'   \item{instansi}{Instansi}
#'   \item{tahun}{Tahun}
#'   \item{bulan}{Bulan (dalam angka)}
#'   \item{capaian_pengadaan}{Capaian Pengadaan Kementerian Lembaga (dalam} persen)
#'   \item{capaian_kontrak}{Capaian Kontrak Kementerian Lembaga (dalam} persen)
#'   \item{capaian_pelaksanaan}{Capaian Pelaksanaan Kementerian Lembaga (dalam persen)}
#'   \item{capaian_pho}{Capaian Provisional Hand Over Kementerian Lembaga (dalam persen)}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/capaian-dari-pengadaan-kementerian-lembaga}
"brk_pengadaan_lembaga"

#'  Capaian dari Pengadaan Pemerintah Provinsi
#'
#' Dataset ini berisi persentase dari capaian dari pengadaan di setiap provinsi di Indonesia
#'
#' @format Dataframe dengan 792 baris dan 7 kolom
#'
#' \describe{
#'   \item{nama_provinsi}{Nama provinsi}
#'   \item{tahun}{Tahun}
#'   \item{bulan}{Bulan (dalam angka)}
#'   \item{capaian_pengadaan}{Capaian Pengadaan Kementerian Lembaga (dalam} persen)
#'   \item{capaian_kontrak}{Capaian Kontrak Kementerian Lembaga (dalam} persen)
#'   \item{capaian_pelaksanaan}{Capaian Pelaksanaan Kementerian Lembaga (dalam persen)}
#'   \item{capaian_pho}{Capaian Provisional Hand Over Kementerian Lembaga (dalam persen)}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/capaian-dari-pengadaan-pemerintah-provinsi}
"brk_pengadaan_provinsi"
