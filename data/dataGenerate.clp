; ----------------------------------  BRANCH 2  ------------------------------------------
; -----------------------------------------------------------------------------------------
(defrule telogenEffluvium ;PENYAKIT 3
    (number_1 2)
    (number_2 3)
    (number_3 12)
    (number_4 18)
    =>
    (assert (people_is telogenEffluvium))
)

(defrule parsial_telogenEffluvium ;PENYAKIT 3
    (number_1 2)
    (number_2 3)
    (number_3 12)
    (not(number_4 18))
    (number_5 19)
    =>
    (assert (people_is parsial_telogenEffluvium))
)

(defrule parsial_telogenEffluvium2 ;PENYAKIT 3
    (number_1 2)
    (number_2 3)
    (number_3 12)
    (not(number_4 18))
    (not(number_5 19))
    =>
    (assert (people_is parsial_telogenEffluvium2))
)

(defrule chronicCutaneousLupus ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (number_3 10)
    (number_4 7)
    (number_5 17)
    =>
    (assert (people_is chronicCutaneousLupus))
)

(defrule chronicCutaneousLupus2 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (number_3 10)
    (number_4 7)
    (not(number_5 17))
    =>
    (assert (people_is chronicCutaneousLupus2))
)

(defrule parsial_chronicCutaneousLupus3 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (number_3 10)
    (not(number_4 7))
    (number_5 17)
    =>
    (assert (people_is parsial_chronicCutaneousLupus3))
)

(defrule parsial_chronicCutaneousLupus4 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (number_3 10)
    (not(number_4 7))
    (not(number_5 17))
    =>
    (assert (people_is parsial_chronicCutaneousLupus4))
)

(defrule parsial_chronicCutaneousLupus5 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (not(number_3 10))
    (number_4 7)
    (number_5 17)
    =>
    (assert (people_is parsial_chronicCutaneousLupus5))
)

(defrule parsial_chronicCutaneousLupus6 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (not(number_3 10))
    (number_4 7)
    (not(number_5 17))
    =>
    (assert (people_is parsial_chronicCutaneousLupus6))
)

(defrule parsial_chronicCutaneousLupus7 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (not(number_3 10))
    (not(number_4 7))
    (number_5 17)
    =>
    (assert (people_is parsial_chronicCutaneousLupus7))
)

(defrule parsial_chronicCutaneousLupus8 ;PENYAKIT 7
    (number_1 2)
    (number_2 4)
    (not(number_3 10))
    (not(number_4 7))
    (not(number_5 17))
    =>
    (assert (people_is parsial_chronicCutaneousLupus8))
)

(defrule anagenEffluvium ;PENYAKIT 4
    (number_1 2)
    (number_2 11)
    (number_3 19)
    =>
    (assert (people_is anagenEffluvium))
)

(defrule anagenEffluvium2 ;PENYAKIT 4
    (number_1 2)
    (number_2 11)
    (not(number_3 19))
    =>
    (assert (people_is anagenEffluvium2))
)

(defrule tractionAlopecia ;PENYAKIT 6
    (number_1 2)
    (number_2 14)
    (number_3 15)
    =>
    (assert (people_is tractionAlopecia))
)

(defrule tractionAlopecia2 ;PENYAKIT 6
    (number_1 2)
    (number_2 14)
    (not(number_3 15))
    =>
    (assert (people_is tractionAlopecia2))
)

; ----------------------------------  BRANCH 9  ------------------------------------------
; -----------------------------------------------------------------------------------------
(defrule androgeneticAlopecia  ;PENYAKIT 1
    (number_1 9)
    (number_2 17)
    (number_3 18)
    (number_4 20)
    =>
    (assert (people_is androgeneticAlopecia))

)

(defrule androgeneticAlopecia2 ;PENYAKIT 1
    (number_1 9)
    (number_2 17)
    (number_3 18)
    (not(number_4 20))
    =>
    (assert (people_is androgeneticAlopecia2))
)

(defrule parsial_androgeneticAlopecia ;PENYAKIT 1
    (number_1 9)
    (number_2 17)
    (not(number_3 18))
    (number_4 20)
    =>
    (assert (people_is parsial_androgeneticAlopecia))
)

(defrule parsial_androgeneticAlopecia2 ;PENYAKIT 1
    (number_1 9)
    (number_2 17)
    (not(number_3 18))
    (not(number_4 20))
    =>
    (assert (people_is parsial_androgeneticAlopecia2))
)

(defrule parsial_androgeneticAlopecia3 ;PENYAKIT 1
    (number_1 9)
    (not(number_2 17))
    (number_3 18)
    (number_4 20)
    =>
    (assert (people_is parsial_androgeneticAlopecia3))
)

(defrule parsial_androgeneticAlopecia4 ;PENYAKIT 1
    (number_1 9)
    (not(number_2 17))
    (number_3 18)
    (not(number_4 20))
    =>
    (assert (people_is parsial_androgeneticAlopecia4))
)

(defrule parsial_androgeneticAlopecia5 ;PENYAKIT 1
    (number_1 9)
    (not(number_2 17))
    (not(number_3 18))
    (number_4 20)
    =>
    (assert (people_is parsial_androgeneticAlopecia5))
)

(defrule parsial_androgeneticAlopecia6 ;PENYAKIT 1
    (number_1 9)
    (not(number_2 17))
    (not(number_3 18))
    (not(number_4 20))
    =>
    (assert (people_is parsial_androgeneticAlopecia6))
)

; ----------------------------------  BRANCH 10  ------------------------------------------
; -----------------------------------------------------------------------------------------
(defrule trichotillomania ;PENYAKIT 5
    (number_1 10)
    (number_2 13)
    (number_3 19)
    =>
    (assert (people_is trichotillomania))
)

(defrule parsial_trichotillomania ;PENYAKIT 5
    (number_1 10)
    (number_2 13)
    (not(number_3 19))
    =>
    (assert (people_is parsial_trichotillomania))
)

(defrule parsial_trichotillomania2 ;PENYAKIT 5
    (number_1 10)
    (not(number_2 13))
    (number_3 19)
    =>
    (assert (people_is parsial_trichotillomania2))
)

(defrule parsial_trichotillomania3 ;PENYAKIT 5
    (number_1 10)
    (not(number_2 13))
    (not(number_3 19))
    =>
    (assert (people_is parsial_trichotillomania3))
)

