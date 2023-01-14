(defrule Menu
(not (iffoundChoice ?))
=>
(printout t crlf crlf crlf
"Pilih satu gejala / kondisi yang kamu alami dari pilihan dibawah :" crlf crlf
" 1.) Mengalami kerontokan rambut " crlf crlf ;;Gejala2
" 2.) Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut " crlf crlf ;;Gejala9
" 3.) Mengidap penyakit lain yang dapat menyebabkan kebotakan " crlf crlf ;;Gejala10
" Masukkan salah satu nomor dari gejala yang dialami : " )
(assert (ifgejalaawal (read))))
;; Rules Alopecia
;;------------------R0------------------
(defrule Alopecia
(ifgejalaawal 1)
?retractCh1 <- (ifgejalaawal 1)
(not (ifgejalaawal2 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
"Pilih satu gejala / kondisi yang kamu alami dari pilihan dibawah :" crlf crlf
" 1.) Memiliki kebotakan berbentuk bulatan " crlf crlf ;;Gejala1
" 2.) Mengalami kerontokan rambut akut " crlf crlf ;;Gejala3
" 3.) Memiliki koreng pada area kulit kepala " crlf crlf ;;Gejala4
" 4.) Sedang menjalani kemoterapi " crlf crlf ;;Gejala11
" 5.) Sering melakukan catok rambut " crlf crlf ;;Gejala14
" Jawabanmu ? " )
(assert (ifgejalaawal2 (read))))
;;------------------R1------------------
(defrule Alopecia1
(ifgejalaawal2 1)
?retractCh1 <- (ifgejalaawal2 1)
(not (ifyatidak ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
" Apakah kamu mengidap penyakit lain yang dapat menyebabkan kebotakan ? (contoh :autoimun) (y/t)" crlf crlf 
" Jawabanmu ? " )
(assert (ifyatidak (read))))
;;------------------R2------------------
(defrule Alopecia2
(ifyatidak y)
?retractChy <- (ifyatidak y)
(not (ifyatidak1 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita hanya terjadi pada satu tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak1 (read))))
;;------------------R3------------------
(defrule Alopecia3
(ifyatidak t)
?retractChy <- (ifyatidak t)
(not (ifyatidak1 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita hanya terjadi pada satu tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak1 (read))))
;;------------------R4------------------
(defrule Alopecia4
(ifyatidak1 y)
?retractChy <- (ifyatidak1 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Alopecia Areata " crlf crlf 
    "Alopecia areata adalah kebotakan disebabkan oleh penyakit autoimun. " crlf crlf
    "Pada alopecia areata, sistem imun menyerang dan merusak akar rambut sehingga menyebabkan kerontokan dan kebotakan. " crlf crlf
    "Kulit kepala yang botak dengan bentuk pitak adalah salah satu tanda dari kondisi ini."crlf crlf crlf crlf
;;Cara mengobati
    "Alopecia Areata dapat diobati dengan cara memperbaiki kondisi autoimun." crlf crlf 
    "Metode pengobatan yang dapat dicoba adalah dengan meminum obat immunospresan, baik topikal maupun sistemik atau oral. " crlf crlf 
    "Berikan pula supplement untuk menutrisi rambut atau akar rambut. " crlf crlf crlf crlf
;;Cara Pencegahan
    "Alopecia Areata adalah penyakit autoimun, sehingga penyakit ini tidak dapat dicegah, namun bisa dikurangi tingkat keparahannya, " crlf crlf 
    "dengan memberikan treatment yang tepat secepatnya, sehingga tidak menjalar lebih jauh. " crlf crlf 
    "Perlu dilakukan pemeriksaan lebih lanjut untuk mendetekski apakah terdapat penyakit autoimun yang lain. " crlf crlf 
crlf crlf))
;;------------------R5------------------
(defrule Alopecia5
(ifyatidak1 t)
?retractChy <- (ifyatidak1 t)
(not (ifyatidak2 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita terjadi pada beberapa tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak2 (read))))
;;------------------R6------------------
(defrule Alopecia6
(ifyatidak2 y)
?retractChy <- (ifyatidak2 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Alopecia Areata" crlf crlf 
    "Alopecia areata adalah kebotakan disebabkan oleh penyakit autoimun. " crlf crlf
    "Pada alopecia areata, sistem imun menyerang dan merusak akar rambut sehingga menyebabkan kerontokan dan kebotakan. " crlf crlf
    "Kulit kepala yang botak dengan bentuk pitak adalah salah satu tanda dari kondisi ini."crlf crlf crlf crlf
;;Cara mengobati
    "Alopecia Areata dapat diobati dengan cara memperbaiki kondisi autoimun." crlf crlf 
    "Metode pengobatan yang dapat dicoba adalah dengan meminum obat immunospresan, baik topikal maupun sistemik atau oral. " crlf crlf 
    "Berikan pula supplement untuk menutrisi rambut atau akar rambut. " crlf crlf crlf crlf
;;Cara Pencegahan
    "Alopecia Areata adalah penyakit autoimun, sehingga penyakit ini tidak dapat dicegah, namun bisa dikurangi tingkat keparahannya, " crlf crlf 
    "dengan memberikan treatment yang tepat secepatnya, sehingga tidak menjalar lebih jauh. " crlf crlf 
    "Perlu dilakukan pemeriksaan lebih lanjut untuk mendeteksi apakah terdapat penyakit autoimun yang lain. " crlf crlf 
crlf crlf))
;;------------------R7------------------
(defrule Alopecia7
(ifyatidak2 t)
?retractChy <- (ifyatidak2 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf 
    "Memiliki kebotakan berbentuk bulatan" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf
    "Mengalami kebotakan pada beberapa tempat" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R8------------------
(defrule Alopecia8
(ifgejalaawal2 2)
?retractCh1 <- (ifgejalaawal2 2)
(not (ifgejalaawal3 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
"Pilih satu gejala / kondisi yang kamu alami dari pilihan dibawah :" crlf crlf
" 1.) Mengalami radang pada area kepala " crlf crlf ;;Gejala5
" 2.) Memiliki bekas luka atau jaringan parut pada area kulit kepala " crlf crlf ;;Gejala7
" 3.) Mengidap penyakit lain yang dapat menyebabkan kebotakan " crlf crlf ;;Gejala10
" 4.) Pasca melahirkan " crlf crlf ;;Gejala12
" Jawabanmu ? " )
(assert (ifgejalaawal3 (read))))
;;------------------R9------------------
(defrule Alopecia9
(ifgejalaawal3 1)
?retractChy <- (ifgejalaawal3 1)
(not (ifyatidak4 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan permanen ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak4 (read))))
;;------------------R10------------------
(defrule Alopecia10
(ifyatidak4 y)
?retractChy <- (ifyatidak4 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Lichen Planopilaris atau Lichen Planus adalah peradangan di kulit, kuku, atau selaput lendir (mukosa)" crlf crlf
    "Disebkan oleh kelainan pada sistem kekebalan tubuh."crlf crlf 
    "Lichen Planopilaris tidak menular layaknya infeksi, tetapi bisa dialami oleh semua orang dari segala golongan usia." crlf crlf crlf crlf
;;Cara Pengobatan
    "Beberapa metode pengobatan yang dapat dilakukan untuk menangani Lichen Planopilaris antara lain" crlf crlf
    "menggunakan obat antihistamin (baik oral atau oles), menggunakan obat kortikosteroid dalam bentuk salep, tablet atau injeksi" crlf crlf
    "pemberian obat immunosupresan dalam bentuk krim atau salep, serta fototerapi atau sinar ultraviolet." crlf crlf crlf crlf
;;Cara Pencegahan
    "Lichen Planopilaris dapat dicegah dengan mengurangi atau menghentikan kebiasaan merokok dan mengkonsumsi minuman beralkohol," crlf crlf
    "serta menghindari konsumsi makanan yang terlalu asin, asam atau pedas." crlf crlf
crlf crlf))
;;------------------R11------------------
(defrule Alopecia11
(ifyatidak4 t)
?retractChy <- (ifyatidak4 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
"Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah atau bukan merupakan alopecia." crlf crlf crlf
"Jenis Alopecia yang kemungkinan kamu alami adalah Lichen Planopilaris" crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
"Radang pada area kepala" crlf crlf
"Kerontokan rambut akut" crlf crlf crlf crlf
"Gejala yang tidak dialami : " crlf crlf
"Kebotakan permanen" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R12------------------
(defrule Alopecia12
(ifgejalaawal3 2)
?retractChy <- (ifgejalaawal3 2)
(not (ifyatidak5 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Mengalami kebotakan yang menyebar secara sentrifugal ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak5 (read))))
;;------------------R13------------------
(defrule Alopecia13
(ifyatidak5 t)
?retractChy <- (ifyatidak5 t)
(not (ifyatidak25 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak25 (read))))
;;------------------R14------------------
(defrule Alopecia14
(ifyatidak5 y)  
?retractChy <- (ifyatidak5 y)
(not (ifyatidak6 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak6 (read))))
;;------------------R15------------------
(defrule Alopecia15
(ifyatidak6 t)
?retractChy <- (ifyatidak6 t)
(not (ifyatidak7 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan menyebar dari puncak kepala kearah luar ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak7 (read))))
;;------------------R16------------------
(defrule Alopecia16
(ifyatidak6 y)
?retractChy <- (ifyatidak6 y)
(not (ifyatidak7 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan menyebar dari puncak kepala kearah luar ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak7 (read))))
;;------------------R17------------------
(defrule Alopecia17
(ifyatidak7 y)
?retractChy <- (ifyatidak7 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu alami adalah Central Centrifugal Cicatricial Alopecia." crlf crlf 
    "Penyakit ini menyebabkan penderitanya mengalami kehilangan rambut secara permanen," crlf crlf 
    "dimulai dari puncak kepala yang kemudian menyebar secara sentrifugal kearah luar kepala. Umumnya terjadi pada ras Afrika-Amerika" crlf crlf crlf crlf
;;Cara Pengobatan
    "Metode pengobatan yang dapat dilakukan oleh penderita Central Centrifugal Cicatricial Alopecia adalah dengan" crlf crlf
    "memberikan suplemen untuk penutrisi rambut serta obat topikal. Selain itu, penderita dapat mengkonsumsi steroid dengan dosis tertentu." crlf crlf
    "steroid yang digunakan dapat berupa steroid topikal atau steroid intralesional." crlf crlf crlf crlf 
;;Cara Pencegahan
    "Central Centrifugal Cicatricial Alopecia ini umumnya dialami oleh wanita dari ras Afrika-Amerika yang menggunakan atribut rambut," crlf crlf 
    "dimana atribut rambut tersebut memberikan beban berlebihan pada akar rambut. Oleh karena itu," crlf crlf
    "metode pencegahan yang paling tepat adalah dengan tidak menggunakan aksesoris rambut yang berlebihan." crlf crlf
crlf crlf))
;;------------------R18------------------
(defrule Alopecia18
(ifyatidak7 t)
?retractChy <- (ifyatidak7 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Central Centrifugal Alopecia" crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Kebotakan pada puncak kepala" crlf crlf
    "Bekas luka atau jaringan parut pada area kulit kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan yang menyebar dari puncak kepala kearah luar" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R19------------------
(defrule Alopecia19
(ifgejalaawal3 3)
?retractChy <- (ifgejalaawal3 3)
(not (ifyatidak8 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengidap penyakit autoimun ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak8 (read))))
;;------------------R20------------------
(defrule Alopecia20
(ifyatidak8 t)
?retractChy <- (ifyatidak8 t)
(not(ifyatidak27))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada beberapa tempat ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak27(read))))
;;------------------R21------------------
(defrule Alopecia21
(ifyatidak8 y)
?retractChy <- (ifyatidak8 y)
(not (ifyatidak9 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada beberapa tempat ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak9(read))))
;;------------------R22------------------
(defrule Alopecia22
(ifyatidak9 t)
?retractChy <- (ifyatidak9 t)
(not (ifyatidak34 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada alis ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak34(read))))
;;------------------R23------------------
(defrule Alopecia23
(ifyatidak9 y)
?retractChy <- (ifyatidak9 y)
(not (ifyatidak10 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada alis ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak10(read))))
;;------------------R24------------------
(defrule Alopecia24
(ifyatidak10 t)
?retractChy <- (ifyatidak10 t)
(not (ifyatidak37 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak37(read))))
;;------------------R25------------------
(defrule Alopecia25
(ifyatidak10 y)
?retractChy <- (ifyatidak10 y)
(not (ifyatidak11 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak11(read))))
;;------------------R26------------------
(defrule Alopecia26
(ifyatidak11 t)
?retractChy <- (ifyatidak11 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Kebotakan pada beberapa tempat" crlf crlf
    "Kerontokan pada alis" crlf crlf 
    "Mengidap autoimun" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R27------------------
(defrule Alopecia27
(ifyatidak11 y)
?retractChy <- (ifyatidak11 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Alopecia Areata Universalis atau yang biasa disebut Alopecia Universalis." crlf crlf 
    "Penyakit ini adalah salah satu jenis penyakit autoimun yang memiliki gejala unik, dimana penderitanya mengalami kebotakan rambut diseluruh tubuh, termasuk alis, bulu mata dan bulu hidung." crlf crlf 
    "Penyakit ini bisa menjangkit balita hingga dewasa, dan dapat aktif secara mendadak. " crlf crlf crlf crlf
;;Cara Pengobatan
    "Sejauh ini belum ada metode pengobatan yang 100% efektif untuk penyakit Alopecia Universalis." crlf crlf
    "Beberapa metode pengobatan yang dapat dicoba oleh penderitanya adalah dengan meminum obat immunospresan untuk memperbaiki kondisi autoimun, baik secara topikal maupun sistemik dan oral." crlf crlf
    "Selain itu, suplemen untuk menutrisi rambut dapat membantu." crlf crlf crlf crlf 
;;Cara Pencegahan
    "Sama dengan Alopecia Areata, Alopecia Universalis tidak dapat dicegah, namun dapat dikurangi tingkat keparahannya." crlf crlf 
    "Dengan memberikan perawatan yang tepat dan cepat, Alopecia Universalis dapat dicegah agar tidak menyebar lebih parah pada penderitanya." crlf crlf
    "Penderita Alopecia Universalis juga disarankan untuk melakukan pemeriksaan lebih lanjut, agar daapt dideteksi apakah mereka menderita penyakit autoimun yang lain." crlf crlf
crlf crlf))
;;------------------R28------------------
(defrule Alopecia28
(ifgejalaawal3 4)
?retractChy <- (ifgejalaawal3 4)
(not (ifyatidak12 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan yang kamu derita hanya terjadi pada satu tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak12 (read))))
;;------------------R29------------------
(defrule Alopecia29
(ifyatidak12 y)
?retractChy <- (ifyatidak12 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Telogen Effluvium. Telogen Effluvium adalah kerontokan rambut yang terjadi secara mendadak, namun tidak permanen." crlf crlf
    "Umumnya, penyakit ini diderita oleh wanita sehat usia 30 hingga 60 tahun setelah melewati proses melahirkan. Dapat juga terjadi karena stress." crlf crlf
    "Kondisi ini biasanya terjadi ketika ada perubahan jumlah folikel rambut yang bertugas untuk menumbuhkan rambut." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Karena Telogen Effluvium merupakan jenis Alopecia yang umum terjadi, metode pengobatan yang dapat dilakukan pun mudah dan tidak beresiko." crlf crlf
    "Penanganan yang tepat adalah dengan memberikan suplemen untuk menutrisi rambut, serta dengan memberikan obat topikal." crlf crlf
    "Selain itu, penderita dapat menggunakan obat oles minoksidil untuk merangsang pertumbuhan rambut, sembari menjaga pola makan dengan diet yang seimbang." crlf crlf crlf crlf
;;Cara Pencegahan
    "Untuk mencegah agar Telogen Effluvium tidak kambuh, penderitanya dapat mengkonsumsi obat yang berfungsi untuk menstabilkan hormon. " crlf crlf
    "Agar penyakit tidak kambuh dengan tingkat yang lebih parah, pola makan serta gaya hidup yang sehat harus dipertahankan oleh penderitanya."
    "Metode lain yang dapat dilakukan juga adalah dengan menjaga kesehatan mental, serta menjaga kondisi pikiran agar tidak stress." crlf crlf crlf crlf
crlf crlf))
;;------------------R30------------------
(defrule Alopecia30
(ifyatidak12 t)
?retractChy <- (ifyatidak12 t)
(not (ifyatidak13 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada beberapa tempat ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak13(read))))
;;------------------R31------------------
(defrule Alopecia31
(ifyatidak13 y)
?retractChy <- (ifyatidak13 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Telogen Effluvium. Telogen Effluvium adalah kerontokan rambut yang terjadi secara mendadak, namun tidak permanen." crlf crlf
    "Umumnya, penyakit ini diderita oleh wanita sehat usia 30 hingga 60 tahun setelah melewati proses melahirkan. Dapat juga terjadi karena stress." crlf crlf
    "Kondisi ini biasanya terjadi ketika ada perubahan jumlah folikel rambut yang bertugas untuk menumbuhkan rambut." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Karena Telogen Effluvium merupakan jenis Alopecia yang umum terjadi, metode pengobatan yang dapat dilakukan pun mudah dan tidak beresiko." crlf crlf
    "Penanganan yang tepat adalah dengan memberikan suplemen untuk menutrisi rambut, serta dengan memberikan obat topikal." crlf crlf
    "Selain itu, penderita dapat menggunakan obat oles minoksidil untuk merangsang pertumbuhan rambut, sembari menjaga pola makan dengan diet yang seimbang." crlf crlf crlf crlf
;;Cara Pencegahan
    "Untuk mencegah agar Telogen Effluvium tidak kambuh, penderitanya dapat mengkonsumsi obat yang berfungsi untuk menstabilkan hormon. " crlf crlf
    "Agar penyakit tidak kambuh dengan tingkat yang lebih parah, pola makan serta gaya hidup yang sehat harus dipertahankan oleh penderitanya."
    "Metode lain yang dapat dilakukan juga adalah dengan menjaga kesehatan mental, serta menjaga kondisi pikiran agar tidak stress." crlf crlf crlf crlf
crlf crlf))
;;------------------R32------------------
(defrule Alopecia32
(ifyatidak13 t)
?retractChy <- (ifyatidak13 t)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Telogen Effluvium. Telogen Effluvium adalah kerontokan rambut yang terjadi secara mendadak, namun tidak permanen." crlf crlf
    "Umumnya, penyakit ini diderita oleh wanita sehat usia 30 hingga 60 tahun setelah melewati proses melahirkan. Dapat juga terjadi karena stress." crlf crlf
    "Kondisi ini biasanya terjadi ketika ada perubahan jumlah folikel rambut yang bertugas untuk menumbuhkan rambut." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Karena Telogen Effluvium merupakan jenis Alopecia yang umum terjadi, metode pengobatan yang dapat dilakukan pun mudah dan tidak beresiko." crlf crlf
    "Penanganan yang tepat adalah dengan memberikan suplemen untuk menutrisi rambut, serta dengan memberikan obat topikal." crlf crlf
    "Selain itu, penderita dapat menggunakan obat oles minoksidil untuk merangsang pertumbuhan rambut, sembari menjaga pola makan dengan diet yang seimbang." crlf crlf crlf crlf
;;Cara Pencegahan
    "Untuk mencegah agar Telogen Effluvium tidak kambuh, penderitanya dapat mengkonsumsi obat yang berfungsi untuk menstabilkan hormon. " crlf crlf
    "Agar penyakit tidak kambuh dengan tingkat yang lebih parah, pola makan serta gaya hidup yang sehat harus dipertahankan oleh penderitanya."
    "Metode lain yang dapat dilakukan juga adalah dengan menjaga kesehatan mental, serta menjaga kondisi pikiran agar tidak stress." crlf crlf crlf crlf
crlf crlf))
;;------------------R33------------------
(defrule Alopecia33
(ifgejalaawal2 3)
?retractCh1 <- (ifgejalaawal2 3)
(not (ifyatidak14 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
" Apakah kamu mengidap penyakit lain yang dapat menyebabkan kebotakan ? (y/t)" crlf crlf 
" Jawabanmu ? " )
(assert (ifyatidak14 (read))))
;;------------------R34------------------
(defrule Alopecia34
(ifyatidak14 t)
?retractCh1 <- (ifyatidak14 t)
(not (ifyatidak38 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
" Apakah kamu memiliki bekas luka atau jaringan parut pada area kulit kepala ? (y/t)" crlf crlf 
" Jawabanmu ? " )
(assert (ifyatidak38 (read))))
;;------------------R35------------------
(defrule Alopecia35
(ifyatidak14 y)
?retractCh1 <- (ifyatidak14 y)
(not (ifyatidak15 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
" Apakah kamu memiliki bekas luka atau jaringan parut pada area kulit kepala ? (y/t)" crlf crlf 
" Jawabanmu ? " )
(assert (ifyatidak15 (read))))
;;------------------R36------------------
(defrule Alopecia36
(ifyatidak15 t)
?retractChy <- (ifyatidak15 t)
(not (ifyatidak41 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak41 (read))))
;;------------------R37------------------
(defrule Alopecia37
(ifyatidak15 y)
?retractChy <- (ifyatidak15 y)
(not (ifyatidak16 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak16 (read))))
;;------------------R38------------------
(defrule Alopecia38
(ifyatidak16 t)
?retractChy <- (ifyatidak16 t)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Chronic Cutaneous Lupus Erythematosus. Penyakit ini adalah cabang dari penyakit lupus, dimana penderitanya mengalami gejala" crlf crlf
    "kerontokan rambut pada area kepala, disertai dengan dasar kotor pada kulit kepala dengan adanya krusta." crlf crlf
    "Gejala dari penyakit ini dapat menyebar pada area wajah hingga tubuh." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Metode pengobatan yang dapat dicoba oleh pasien Chronic Cutaneous Lupus Erythematosus adalah dengan meminum obat immunospresan yang berfungsi untuk memperbaiki kondisi autoimun SLE." crlf crlf
    "Obat immunospresan tersebut dapat berupa topikal, maupun sistemik dan oral. Berikan pula suplemen untuk menutrisi pertumbuhan rambut dan memperkuat akar rambut." crlf crlf
    "Obat oles steroid seperti fluocinolone acetonide atau hydrocortisone btyrate dapat meredakan inflamasi dan mengurangi pembengkakkan." crlf crlf crlf crlf
;;Cara Pencegahan
    "Guna mencegah kambuhnya gejala, penderita dianjurkan untuk menghindari sinar matahari langsung, serta menggunakan krim tabir surya." crlf crlf
    "Krim tabir surya yang digunakan harus memiliki tingkat SPF minimal 30. Gunakan tabir surya secara berkala setiap 4 jam." crlf crlf 
    "Penderita juga dapat melakukan pengobatan ataupun perawatan sistemil lupus yang diderita." crlf crlf crlf crlf 
crlf crlf))
;;------------------R39------------------
(defrule Alopecia39
(ifyatidak16 y)
?retractChy <- (ifyatidak16 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Chronic Cutaneous Lupus Erythematosus. Penyakit ini adalah cabang dari penyakit lupus, dimana penderitanya mengalami gejala" crlf crlf
    "kerontokan rambut pada area kepala, disertai dengan dasar kotor pada kulit kepala dengan adanya krusta." crlf crlf
    "Gejala dari penyakit ini dapat menyebar pada area wajah hingga tubuh." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Metode pengobatan yang dapat dicoba oleh pasien Chronic Cutaneous Lupus Erythematosus adalah dengan meminum obat immunospresan yang berfungsi untuk memperbaiki kondisi autoimun SLE." crlf crlf
    "Obat immunospresan tersebut dapat berupa topikal, maupun sistemik dan oral. Berikan pula suplemen untuk menutrisi pertumbuhan rambut dan memperkuat akar rambut." crlf crlf
    "Obat oles steroid seperti fluocinolone acetonide atau hydrocortisone btyrate dapat meredakan inflamasi dan mengurangi pembengkakkan." crlf crlf crlf crlf
;;Cara Pencegahan
    "Guna mencegah kambuhnya gejala, penderita dianjurkan untuk menghindari sinar matahari langsung, serta menggunakan krim tabir surya." crlf crlf
    "Krim tabir surya yang digunakan harus memiliki tingkat SPF minimal 30. Gunakan tabir surya secara berkala setiap 4 jam." crlf crlf 
    "Penderita juga dapat melakukan pengobatan ataupun perawatan sistemil lupus yang diderita." crlf crlf crlf crlf 
crlf crlf))
;;------------------R40------------------
(defrule Alopecia40
(ifgejalaawal2 4)
?retractCh1 <- (ifgejalaawal2 4)
(not (ifyatidak17 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
"Apakah kebotakan yang kamu derita terjadi pada beberapa tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak17 (read))))
;;------------------R41------------------
(defrule Alopecia41
(ifyatidak17 t)
?retractChy <- (ifyatidak17 t)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Anagen Effluvium. Anagen Effluvium sendiri adalah penyakit yang menyebabkan penderitanya mengalami kerontokan rambut secara abnormal," crlf crlf
    "yang terjadi pada fase anagen dalam siklus pertumbuhan rambut. Umumnya Anagen Effluvium disebabkan oleh obat yang digunakan untuk mengobati kanker, ataupun karena paparan terhadap senyawa kimia tertentu." crlf crlf
    "Rambut baru yang tumbuh setelah sembuh dari jenis Alopecia ini dapat berubah secara warna maupun tekstur." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Untuk mengobati Anagen Effluvium, penderita harus menjauh dari sumber penyebabnya. Penyebab utama seperti obat kanker harus diselesaikan hingga pasien pulih dari kanker, kemudian rambut akan tumbuh secara alami." crlf crlf
    "Jika penyebabnya adalah paparan terhadap senyawa kimia tertentu, maka penderita harus mengeleminasi atau meminimalisir paparan terhadap senyawa kimia tersebut." crlf crlf
    "Suplemen untuk penutrisi penumbuh rambut serta obat topikal juga dapat dikonsumsi untuk mempercepat pertumbuhan rambut." crlf crlf crlf crlf
;;Cara Pencegahan
    "Penderita harus mencegah kontak dengan sumber mutasi siklus pertumbuhan rambut." crlf crlf
    "Penderita juga harus memperbaiki nutrisi serta kondisi umum mereka." crlf crlf 
    "Metode pencegahan lain yang dapat dicoba adalah dengan mengobati kerontokkan dengan jenis terapi yang tepat." crlf crlf crlf crlf 
crlf crlf))
;;------------------R42------------------
(defrule Alopecia42
(ifyatidak17 y)
?retractChy <- (ifyatidak17 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Anagen Effluvium. Anagen Effluvium sendiri adalah penyakit yang menyebabkan penderitanya mengalami kerontokan rambut secara abnormal," crlf crlf
    "yang terjadi pada fase anagen dalam siklus pertumbuhan rambut. Umumnya Anagen Effluvium disebabkan oleh obat yang digunakan untuk mengobati kanker, ataupun karena paparan terhadap senyawa kimia tertentu." crlf crlf
    "Rambut baru yang tumbuh setelah sembuh dari jenis Alopecia ini dapat berubah secara warna maupun tekstur." crlf crlf crlf crlf 
;;Cara Pengobatan
    "Untuk mengobati Anagen Effluvium, penderita harus menjauh dari sumber penyebabnya. Penyebab utama seperti obat kanker harus diselesaikan hingga pasien pulih dari kanker, kemudian rambut akan tumbuh secara alami." crlf crlf
    "Jika penyebabnya adalah paparan terhadap senyawa kimia tertentu, maka penderita harus mengeleminasi atau meminimalisir paparan terhadap senyawa kimia tersebut." crlf crlf
    "Suplemen untuk penutrisi penumbuh rambut serta obat topikal juga dapat dikonsumsi untuk mempercepat pertumbuhan rambut." crlf crlf crlf crlf
;;Cara Pencegahan
    "Penderita harus mencegah kontak dengan sumber mutasi siklus pertumbuhan rambut." crlf crlf
    "Penderita juga harus memperbaiki nutrisi serta kondisi umum mereka." crlf crlf 
    "Metode pencegahan lain yang dapat dicoba adalah dengan mengobati kerontokkan dengan jenis terapi yang tepat." crlf crlf crlf crlf 
crlf crlf))
;;------------------R43------------------
(defrule Alopecia43
(ifgejalaawal2 5)
?retractCh1 <- (ifgejalaawal2 5)
(not (ifyatidak18 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
"Apakah kamu sering merubah gaya rambut ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak18 (read))))
;;------------------R44------------------
(defrule Alopecia44
(ifyatidak18 t)
?retractChy <- (ifyatidak18 t)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Traction Alopecia. Traction Alopecia adalah jenis Alopecia yang disebabkan oleh penarikan berulang kali." crlf crlf
    "Salah satu contoh penarikan berkali - kali adalah saat terlalu sering melakukan catok rambut serta berbagai tindakan untuk merubah model atau gaya rambut." crlf crlf
    "Traction Alopecia juga bisa disebabkan oleh penggunaan ekstensi rambut yang berlebihan." crlf crlf crlf crlf
;;Cara Pengobatan
    "Pengobatan utama untuk Traction Alopecia yaitu dengan mengubah gaya rambut menjadi gaya rambut yang tidak membebani akar rambut. Potong rambut jika rambut sudah sangat panjang." crlf crlf
    "Konsumsi suplemen yang berguna untuk menutrisi pertumbuhan rambut serta obat topikal juga disarankan bagi penderita Traction Alopecia." crlf crlf
    "Gunakan steroid topikal untuk menurunkan radang pada area kulit kepala." crlf crlf crlf crlf
;;Cara Pencegahan
    "Terdapat beberapa metode yang dapat dilakukan untuk mencegah terjadinya Traction Alopecia, seperti tidak terlalu sering menggunakan gaya rambut yang membebani akar rambut." crlf crlf
    "Hindari menguncir rambut menggunakan karet, karena bahan tersebut dapat mencabut rambut dari akarnya. Hindari pula penggunaan ekstensi rambut secara berlebihan, serta melakukan tindakan pada rambut, seperti blow ataupun catok rambut." crlf crlf 
    "Tidak menggunakan rol rambut saat tidur juga dapat membantu mencegah Traction Alopecia." crlf crlf 
crlf crlf))
;;------------------R45------------------
(defrule Alopecia45
(ifgejalaawal 2)
?retractCh1 <- (ifgejalaawal 2)
(not (ifyatidak19 ?))
=>
(retract ?retractCh1)
(printout t crlf crlf crlf 
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak19 (read))))
;;------------------R46------------------
(defrule Alopecia46
(ifyatidak19 t)
?retractChy <- (ifyatidak19 t)
(not (ifyatidak3 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita hanya terjadi pada satu tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak3 (read))))
;;------------------R47------------------
(defrule Alopecia47
(ifyatidak19 y)
?retractChy <- (ifyatidak19 y)
(not (ifyatidak20 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita hanya terjadi pada satu tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak20 (read))))
;;------------------R48------------------
(defrule Alopecia48
(ifyatidak20 y)
?retractChy <- (ifyatidak20 y)
(not (ifyatidak21 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita terjadi pada dahi ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak21 (read))))
;;------------------R49------------------
(defrule Alopecia49
(ifyatidak21 t)
?retractChy <- (ifyatidak21 t)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita Androgenetic Alopecia. Jenis Alopecia ini bersifat hereditary atau keturunan." crlf crlf
    "Penyakit ini perbedaan yang tergantung pada jenis kelamin penderitanya, dimana setiap gender memiliki pola kerontokan rambut yang berbeda." crlf crlf
    "Androgenetic Alopecia umumnya terjadi pada pria usia 35 tahun keatas" crlf crlf crlf crlf
;;Cara Pengobatan
   "Terdapat beberapa metode yang dapat dicoba untuk mengobati Androgenetic Alopecia, seperti menggunakan treatment hormonal, finasteride dan minoxidil," crlf crlf
   "baik secara topikal maupun oles. Perawatan dengan memberikan stem cell dan suplemen untuk memberikan nutrisi pada rambut." crlf crlf
   "Tujuan utama dari obat-obat ini adalah untuk mencegah progresivitas kerontokan rambut pada penderitanya" crlf crlf crlf crlf
;;Cara Pencegahan
    "Merupakan penyakit yang bersifat diturunkan, dan karena kondisi genetika, maka jenis Alopecia susah untuk dicegah." crlf crlf
    "Hal yang bisa dilakukan adalah memperbaiki pola hidup, dengan tidak merokok dan tidak tidur larut malam." crlf crlf
    "Hal - hal tersebut bila dilakukan akan mengurangi resiko terjangkit Androgenetic Alopecia." crlf crlf
crlf crlf))
;;------------------R50------------------
(defrule Alopecia50
(ifyatidak21 y)
?retractChy <- (ifyatidak21 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita Androgenetic Alopecia. Jenis Alopecia ini bersifat hereditary atau keturunan." crlf crlf
    "Penyakit ini perbedaan yang tergantung pada jenis kelamin penderitanya, dimana setiap gender memiliki pola kerontokan rambut yang berbeda." crlf crlf
    "Androgenetic Alopecia umumnya terjadi pada pria usia 35 tahun keatas" crlf crlf crlf crlf
;;Cara Pengobatan
   "Terdapat beberapa metode yang dapat dicoba untuk mengobati Androgenetic Alopecia, seperti menggunakan treatment hormonal, finasteride dan minoxidil," crlf crlf
   "baik secara topikal maupun oles. Perawatan dengan memberikan stem cell dan suplemen untuk memberikan nutrisi pada rambut." crlf crlf
   "Tujuan utama dari obat-obat ini adalah untuk mencegah progresivitas kerontokan rambut pada penderitanya." crlf crlf crlf crlf
;;Cara Pencegahan
    "Merupakan penyakit yang bersifat diturunkan, dan karena kondisi genetika, maka jenis Alopecia susah untuk dicegah." crlf crlf
    "Hal yang bisa dilakukan adalah memperbaiki pola hidup, dengan tidak merokok dan tidak tidur larut malam." crlf crlf
    "Hal - hal tersebut bila dilakukan akan mengurangi resiko terjangkit Androgenetic Alopecia." crlf crlf
crlf crlf))
;;------------------R51------------------
(defrule Alopecia51
(ifgejalaawal 3)
?retractChy <- (ifgejalaawal 3)
(not (ifyatidak23 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita terjadi pada beberapa tempat ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak23 (read))))
;;------------------R52------------------
(defrule Alopecia52
(ifyatidak23 t)
?retractChy <- (ifyatidak23 t)
(not (ifyatidak22 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kerontokan yang kamu derita terjadi karena sering mencabut rambut sendiri ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak22 (read))))
;;------------------R53------------------
(defrule Alopecia53
(ifyatidak23 y)
?retractChy <- (ifyatidak23 y)
(not (ifyatidak24 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kerontokan yang kamu derita terjadi karena sering mencabut rambut sendiri ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak24 (read))))
;;------------------R54------------------
(defrule Alopecia54
(ifyatidak24 t)
?retractChy <- (ifyatidak24 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Trichotillomania." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Mengalami kebotakan pada beberapa tempat" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kerontokan karena sering mencabut rambut sendiri" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R55------------------
(defrule Alopecia55
(ifyatidak24 y)
?retractChy <- (ifyatidak24 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Trichotillomania. Penyakit ini merupakan jenis alopecia yang disebabkan oleh gangguan kejiwaan," crlf crlf
    "dimana penderitanya memiliki tendensi untuk mencabut rambut mereka sendiri. Penyakit ini biasanya disebabkan oleh tekanan eksternal ataupun stress." crlf crlf
    "Trichotillomania biasanya disertai dengan gangguan mental lainnya, seperti OCD, gangguan kecemasan (anxiety) ataupun depresi." crlf crlf crlf crlf
;;Cara Pengobatan
   "Metode pengobatan yang paling efektif adalah dengan memperbaiki kondisi kejiwaan atau psikis penderitanya." crlf crlf
   "Selain itu, suplemen untuk menumbuhkan dan menutrisi rambut disertai dengan obat topikal dapat memperbaiki kondisi Alopecia penderitanya." crlf crlf
   "Pengobatan dapat disertai dengan obat-obatan antidepresan untuk meredakan gejala trichotillomania." crlf crlf crlf crlf
;;Cara Pencegahan
    "Cara mencegah trichotillomania adalah dengan mengalihkan perhatian penderitanya pada hal lain, seperti meremas stress ball ataupun benda sejenisnya," crlf crlf
    "memainkan alat seperti fidget spinner, mandi ataupun berendam dalam suasana yang menenangkan untuk meredakan rasa gelisah atau kecemasan yang muncul, serta" crlf crlf
    "mempelajari teknik pernapasan untuk menenangkan dan meredakan gejala." crlf crlf
crlf crlf))
;;------------------R56------------------
(defrule Alopecia56
(ifyatidak25 t)
?retractChy <- (ifyatidak25 t)
(not (ifyatidak26 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan menyebar dari puncak kepala kearah luar ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak26 (read))))
;;------------------R57------------------
(defrule Alopecia57
(ifyatidak26 y)
?retractChy <- (ifyatidak26 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu alami adalah Central Centrifugal Cicatricial Alopecia." crlf crlf 
    "Penyakit ini menyebabkan penderitanya mengalami kehilangan rambut secara permanen," crlf crlf 
    "dimulai dari puncak kepala yang kemudian menyebar secara sentrifugal kearah luar kepala. Umumnya terjadi pada ras Afrika-Amerika" crlf crlf crlf crlf
;;Cara Pengobatan
    "Metode pengobatan yang dapat dilakukan oleh penderita Central Centrifugal Cicatricial Alopecia adalah dengan" crlf crlf
    "memberikan suplemen untuk penutrisi rambut serta obat topikal. Selain itu, penderita dapat mengkonsumsi steroid dengan dosis tertentu." crlf crlf
    "steroid yang digunakan dapat berupa steroid topikal atau steroid intralesional." crlf crlf crlf crlf 
;;Cara Pencegahan
    "Central Centrifugal Cicatricial Alopecia ini umumnya dialami oleh wanita dari ras Afrika-Amerika yang menggunakan atribut rambut," crlf crlf 
    "dimana atribut rambut tersebut memberikan beban berlebihan pada akar rambut. Oleh karena itu," crlf crlf
    "metode pencegahan yang paling tepat adalah dengan tidak menggunakan aksesoris rambut yang berlebihan." crlf crlf
crlf crlf))
;;------------------R58------------------
(defrule Alopecia58
(ifyatidak26 t)
?retractChy <- (ifyatidak26 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Central Centrifugal Alopecia" crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan pada puncak kepala" crlf crlf
    "Kebotakan yang menyebar dari puncak kepala kearah luar" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R59------------------BATAS ALOPECIA AREATA UNIVERSALIS
(defrule Alopecia59
(ifyatidak27 y)
?retractChy <- (ifyatidak27 y)
(not (ifyatidak28 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada alis ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak28(read))))
;;------------------R60------------------
(defrule Alopecia60
(ifyatidak28 y)
?retractChy <- (ifyatidak28 y)
(not (ifyatidak29 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak29(read))))
;;------------------R61------------------
(defrule Alopecia61
(ifyatidak29 y)
?retractChy <- (ifyatidak29 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf
    "Kerontokan pada alis" crlf crlf
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap penyakit autoimun" crlf crlf crlf crlf
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R62------------------
(defrule Alopecia62
(ifyatidak29 t)
?retractChy <- (ifyatidak29 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf
    "Kerontokan pada alis" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap penyakit autoimun" crlf crlf
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf 
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R63------------------
(defrule Alopecia63
(ifyatidak28 t)
?retractChy <- (ifyatidak28 t)
(not (ifyatidak30 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak30(read))))
;;------------------R64------------------
(defrule Alopecia64
(ifyatidak30 y)
?retractChy <- (ifyatidak30 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap autoimun" crlf crlf 
    "Kerontokan pada alis" crlf crlf crlf crlf
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R65------------------
(defrule Alopecia65
(ifyatidak30 t)
?retractChy <- (ifyatidak30 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap autoimun" crlf crlf 
    "Kerontokan pada alis" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R66------------------
(defrule Alopecia66
(ifyatidak27 t)
?retractChy <- (ifyatidak27 t)
(not (ifyatidak31 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kebotakan pada alis ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak31(read))))
;;------------------R67------------------
(defrule Alopecia67
(ifyatidak31 y)
?retractChy <- (ifyatidak31 y)
(not (ifyatidak32 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak32(read))))
;;------------------R68------------------
(defrule Alopecia68
(ifyatidak32 t)
?retractChy <- (ifyatidak32 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kerontokan pada alis" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap autoimun" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf  
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R69------------------
(defrule Alopecia69
(ifyatidak32 y)
?retractChy <- (ifyatidak32 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kerontokan pada alis" crlf crlf
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap autoimun" crlf crlf 
    "Kebotakan pada beberapa tempat" crlf crlf crlf crlf
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R70------------------
(defrule Alopecia70
(ifyatidak31 t)
?retractChy <- (ifyatidak31 t)
(not (ifyatidak33 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak33(read))))
;;------------------R71------------------
(defrule Alopecia71
(ifyatidak33 y)
?retractChy <- (ifyatidak33 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap autoimun" crlf crlf 
    "Kerontokan pada alis" crlf crlf 
    "Kebotakan pada beberapa tempat" crlf crlf crlf crlf
    "Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R72------------------
(defrule Alopecia72
(ifyatidak33 t)
?retractChy <- (ifyatidak33 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap autoimun" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf  
    "Kerontokan pada alis" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R73------------------
(defrule Alopecia73
(ifyatidak34 t)
?retractChy <- (ifyatidak34 t)
(not (ifyatidak35 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak35(read))))
;;------------------R74------------------
(defrule Alopecia74
(ifyatidak35 t)
?retractChy <- (ifyatidak35 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Mengidap autoimun" crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf  
    "Kerontokan pada alis" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R75------------------
(defrule Alopecia75
(ifyatidak35 y)
?retractChy <- (ifyatidak35 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Mengidap autoimun" crlf crlf
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf  
    "Kerontokan pada alis" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R76------------------
(defrule Alopecia76
(ifyatidak34 y)
?retractChy <- (ifyatidak34 y)
(not (ifyatidak36 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kamu mengalami kerontokan pada rambut tubuh ? (y/t)" crlf crlf
" Jawabanmu ? ")
(assert (ifyatidak36(read))))
;;------------------R77------------------
(defrule Alopecia77
(ifyatidak36 y)
?retractChy <- (ifyatidak36 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Mengidap autoimun" crlf crlf
    "Kerontokan pada alis" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R78------------------
(defrule Alopecia78
(ifyatidak36 t)
?retractChy <- (ifyatidak36 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Mengidap autoimun" crlf crlf
    "Kerontokan pada alis" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan pada beberapa tempat" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R79------------------
(defrule Alopecia79
(ifyatidak37 t)
?retractChy <- (ifyatidak37 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Kebotakan pada beberapa tempat" crlf crlf
    "Mengidap autoimun" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf 
    "Kerontokan pada alis" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R80------------------
(defrule Alopecia80
(ifyatidak37 y)
?retractChy <- (ifyatidak37 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Alopecia Areata Universalis." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Kerontokan rambut akut" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Kebotakan pada beberapa tempat" crlf crlf
    "Mengidap autoimun" crlf crlf 
    "Kerontokan pada rambut tubuh" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf 
    "Kerontokan pada alis" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R81------------------
(defrule Alopecia81
(ifyatidak38 y)
?retractChy <- (ifyatidak38 y)
(not (ifyatidak39 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak39 (read))))
;;------------------R82------------------
(defrule Alopecia82
(ifyatidak39 y)
?retractChy <- (ifyatidak39 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf
    "Memiliki koreng pada area kulit kepala" crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R83------------------
(defrule Alopecia83
(ifyatidak39 t)
?retractChy <- (ifyatidak39 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf
    "Memiliki koreng pada area kulit kepala" crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R84------------------
(defrule Alopecia84
(ifyatidak38 t)
?retractChy <- (ifyatidak38 t)
(not (ifyatidak40 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan terjadi pada puncak kepala ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak40 (read))))
;;------------------R85------------------
(defrule Alopecia85
(ifyatidak40 y)
?retractChy <- (ifyatidak40 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf
    "Memiliki koreng pada area kulit kepala" crlf crlf
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R86------------------
(defrule Alopecia86
(ifyatidak40 t)
?retractChy <- (ifyatidak40 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf
    "Memiliki koreng pada area kulit kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R87------------------
(defrule Alopecia87
(ifyatidak41 y)
?retractChy <- (ifyatidak41 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf  
    "Memiliki koreng pada area kulit kepala" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R88------------------
(defrule Alopecia88
(ifyatidak41 t)
?retractChy <- (ifyatidak41 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami kerontokan rambut" crlf crlf  
    "Memiliki koreng pada area kulit kepala" crlf crlf
    "Mengidap penyakit lain yang dapat menyebabkan kebotakan" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Memiliki bekas luka atau jaringan parut pada area kulit kepala" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R89------------------
(defrule Alopecia89
(ifyatidak18 y)
?retractChy <- (ifyatidak18 y)
=>
(retract ?retractChy)
;;Deskripsi penyakit
    (printout t crlf crlf crlf 
    "Penyakit yang kamu derita adalah Traction Alopecia. Traction Alopecia adalah jenis Alopecia yang disebabkan oleh penarikan berulang kali." crlf crlf
    "Salah satu contoh penarikan berkali - kali adalah saat terlalu sering melakukan catok rambut serta berbagai tindakan untuk merubah model atau gaya rambut." crlf crlf
    "Traction Alopecia juga bisa disebabkan oleh penggunaan ekstensi rambut yang berlebihan." crlf crlf crlf crlf
;;Cara Pengobatan
    "Pengobatan utama untuk Traction Alopecia yaitu dengan mengubah gaya rambut menjadi gaya rambut yang tidak membebani akar rambut. Potong rambut jika rambut sudah sangat panjang." crlf crlf
    "Konsumsi suplemen yang berguna untuk menutrisi pertumbuhan rambut serta obat topikal juga disarankan bagi penderita Traction Alopecia." crlf crlf
    "Gunakan steroid topikal untuk menurunkan radang pada area kulit kepala." crlf crlf crlf crlf
;;Cara Pencegahan
    "Terdapat beberapa metode yang dapat dilakukan untuk mencegah terjadinya Traction Alopecia, seperti tidak terlalu sering menggunakan gaya rambut yang membebani akar rambut." crlf crlf
    "Hindari menguncir rambut menggunakan karet, karena bahan tersebut dapat mencabut rambut dari akarnya. Hindari pula penggunaan ekstensi rambut secara berlebihan, serta melakukan tindakan pada rambut, seperti blow ataupun catok rambut." crlf crlf 
    "Tidak menggunakan rol rambut saat tidur juga dapat membantu mencegah Traction Alopecia." crlf crlf 
crlf crlf))
;;------------------R90------------------
(defrule Alopecia90
(ifyatidak3 y)
?retractChy <- (ifyatidak3 y)
(not (ifyatidak42 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita terjadi pada dahi ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak42 (read))))
;;------------------R91------------------
(defrule Alopecia91
(ifyatidak42 t)
?retractChy <- (ifyatidak42 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut" crlf crlf  
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan pada area dahi" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R92------------------
(defrule Alopecia92
(ifyatidak42 y)
?retractChy <- (ifyatidak42 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Chronic Cutaneous Lupus Erytematosus." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut" crlf crlf  
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf 
    "Mengalami kebotakan pada area dahi" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R93------------------
(defrule Alopecia93
(ifyatidak3 t)
?retractChy <- (ifyatidak3 t)
(not (ifyatidak43 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita terjadi pada dahi ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak43 (read))))
;;------------------R94------------------
(defrule Alopecia94
(ifyatidak43 y)
?retractChy <- (ifyatidak43 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Androgenetic Alopecia." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut" crlf crlf  
    "Mengalami kebotakan pada area dahi" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R95------------------
(defrule Alopecia95
(ifyatidak43 t)
?retractChy <- (ifyatidak43 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Androgenetic Alopecia." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf 
    "Mengalami kebotakan pada area dahi" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R96------------------
(defrule Alopecia96
(ifyatidak20 t)
?retractChy <- (ifyatidak20 t)
(not (ifyatidak44 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf
" Apakah kebotakan yang kamu derita terjadi pada dahi ? (y/t) " crlf crlf
" Jawabanmu ? " )
(assert (ifyatidak44 (read))))
;;------------------R97------------------
(defrule Alopecia97
(ifyatidak44 t)
?retractChy <- (ifyatidak44 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Androgenetic Alopecia." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf 
    "Mengalami kebotakan pada area dahi" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R98------------------
(defrule Alopecia98
(ifyatidak44 y)
?retractChy <- (ifyatidak44 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Androgenetic Alopecia." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Memiliki anggota keluarga yang mengalami gejala kerontokan atau kebotakan rambut" crlf crlf 
    "Kebotakan terjadi pada puncak kepala" crlf crlf
    "Mengalami kebotakan pada area dahi" crlf crlf 
    crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan hanya pada satu tempat" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R99------------------
(defrule Alopecia99
(ifyatidak22 t)
?retractChy <- (ifyatidak22 t)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Trichotillomania." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami penyakit lain yang dapat menyebabkan kebotakan" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan pada beberapa tempat" crlf crlf
    "Mengalami kerontokan karena sering mencabut rambut sendiri" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))
;;------------------R100------------------
(defrule Alopecia100
(ifyatidak22 y)
?retractChy <- (ifyatidak22 y)
=>
(retract ?retractChy)
(printout t crlf crlf crlf 
;;Diagnosis
    "Gejala yang kamu alami mengarah pada jenis alopecia dengan tingkat bukti yang rendah, belum pasti atau bukan merupakan alopecia." crlf crlf crlf
    "Jenis Alopecia yang kemungkinan kamu alami adalah Trichotillomania." crlf crlf crlf crlf 
;;Evidence
"Gejala yang dialami : " crlf crlf
    "Mengalami penyakit lain yang dapat menyebabkan kebotakan" crlf crlf 
    "Mengalami kerontokan karena sering mencabut rambut sendiri" crlf crlf crlf crlf
;;Tidak Dialami
"Gejala yang tidak dialami : " crlf crlf
    "Mengalami kebotakan pada beberapa tempat" crlf crlf crlf crlf
"Mohon pastikan kembali gejala-mu dan coba lagi" crlf crlf
crlf crlf))