(defrule androgeneticAlopecia
    (number_1 9)
    (number_2 17)
    (number_3 18)
    (number_4 20)
    =>
    (assert (people_is androgeneticAlopecia))
)

(defrule androgeneticAlopecia2
    (number_1 9)
    (number_2 17)
    (number_3 18)
    (number_4 0)
    =>
    (assert (people_is androgeneticAlopecia2))
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
    crlf crlf)
)
