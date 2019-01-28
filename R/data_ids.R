#' Perkembangan Usaha Mikro Kecil dan Menengah (UMKM)
#'
#' Dataset ini berisi mengenai kondisi dan perkembangan UMKM di Indonesia. Catatan: 1. Sumbangan PDB UMKM pada tahun 1997-2000 masih didasarkan atas harga berlaku. Sumbangan PDB UMKM pada tahun 2001-2012 didasarkan atas harga konstan tahun 2000; 2. Sumbangan PDB mencakup migas dan non migas; 3. Perhitungan sumbangan PDB UMKM pada tahun 2012 masih sangat sementara dan saat ini masih dihitung ulang; 4. Nilai Ekspor UMKM hanya didasarkan pada data di sektor pertanian (pertanian, perikanan, kelautan, peternakan, kehutanan, perkebunan), industri pengolahan, dan pertambangan/penggalian
#'
#' @format Dataframe dengan 16 baris dan 9 kolom
#'
#' \describe{
#'   \item{tahun}{Tahun}
#'   \item{jumlah}{Jumlah UMKM}
#'   \item{pertumbuhan_jumla}{Pertumbuhan jumlah UMKM (%)}
#'   \item{jumlah_tenaga_kerja}{Jumlah tenaga kerja UMKM (orang)}
#'   \item{pertumbuhan_jumlah_tenaga_kerja}{Pertumbuhan jumlah tenaga kerja UMKM (persen)}
#'   \item{sumbangan_pdb}{Sumbangan PDB UMKM (harga konstan, Rp. Miliar)}
#'   \item{sumbangan_pdb}{Pertumbuhan sumbangan PDB UMKM (%)}
#'   \item{nilai_ekspor}{Nilai ekspor UMKM (Rp. Miliar)}
#'   \item{pertumbuhan_nilai_ekspor}{Pertumbuhan nilai ekspor UMKM (%)}
#' }
#'
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/perkembangan-usaha-mikro-kecil-dan-menengah-umkm}
"ids_umkm"

#' Data Kecelakaan Industri
#'
#'Dataset ini berisi mengenai data kecelakaan industri beserta keterangannya
#'
#' @format Dataframe dengan 14 baris dan 9 kolom
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
#' @source Portal Satu Data Indonesia \url{https://data.go.id/dataset/data-kecelakaan-industri-2}
"ids_kecelakaan"
