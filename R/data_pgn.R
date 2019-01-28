#'  Data Bencana Kekeringan
#'
#' Dataset ini berisi mengenai data bencana kekeringan beserta keterangannya
#' @format Dataframe dengan 23 baris dan 9 kolom
#'
#' \describe{
#'   \item{bencana}{Jenis bencana}
#'   \item{tanggal}{Tanggal terjadinya bencana}
#'   \item{jam}{Jam terjadinya bencana}
#'   \item{bujur}{Titik Bujur lokasi kejadian bencana}
#'   \item{lintang}{Titik Lintang lokasi kejadian bencana}
#'   \item{lokasi}{Nama lokasi kejadian bencana}
#'   \item{korban}{Korban kejadia bencana}
#'   \item{kerugian}{Kerugian akibat bencana}
#'   \item{keterangan}{Keterangan lainnya mengenai bencana}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/data-bencana-kekeringan-2}
"pgn_kekeringan"


#' Jumlah Rumah Tangga Usaha Tani
#'
#' Dataset ini berisi informasi mengenai jumlah usaha rumah tangga pertanian berdasarkan luas lahan yang dikelola berdasarkan hasil sensus tani
#'
#' @format Dataframe dengan 14 baris dan 3 kolom
#'
#' \describe{
#'   \item{luas_lahan}{Golongan dari luas lahan (dalam meter persegi)}
#'   \item{tahun}{Tahun Sensus}
#'   \item{jumlah}{Jumlah usaha tani dengan luas lahan tersebut}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/jumlah-rumah-tangga-usaha-tani}
"pgn_rttani"
