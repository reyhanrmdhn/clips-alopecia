; ----------------------------------  BRANCH 2  ------------------------------------------
; -----------------------------------------------------------------------------------------
(defrule alopeciaAreata ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (number_3 10)
    (number_4 18)
    =>
    (assert (people_is alopeciaAreata))
)

(defrule alopeciaAreata2 ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (number_3 10)
    (number_4 19)
    =>
    (assert (people_is alopeciaAreata2))
)

(defrule alopeciaAreata3 ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (number_3 10)
    (not(number_4 18))
    (number_5 19)
    =>
    (assert (people_is alopeciaAreata3))
)

(defrule parsial_alopeciaAreata ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (number_3 10)
    (not(number_4 19))
    (not(number_5 18))
    =>
    (assert (people_is parsial_alopeciaAreata))
)

(defrule parsial_alopeciaAreata2 ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (not(number_3 10))
    (number_4 19)
    =>
    (assert (people_is parsial_alopeciaAreata2))
)

(defrule parsial_alopeciaAreata3 ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (not(number_3 10))
    (number_4 19)
    =>
    (assert (people_is parsial_alopeciaAreata3))
)

(defrule parsial_alopeciaAreata4 ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (not(number_3 10))
    (not(number_4 19))
    (number_5 18)
    =>
    (assert (people_is parsial_alopeciaAreata4))
)

(defrule parsial_alopeciaAreata5 ;PENYAKIT 2
    (number_1 2)
    (number_2 1)
    (not(number_3 10))
    (not(number_4 19))
    (not(number_5 18))
    =>
    (assert (people_is parsial_alopeciaAreata5))
)


(defrule lichenPlanopilaris ;PENYAKIT 8
    (number_1 2)
    (number_2 3)
    (number_3 5)
    (number_4 6)
    =>
    (assert (people_is lichenPlanopilaris))
)

(defrule parsial_lichenPlanopilaris ;PENYAKIT 8
    (number_1 2)
    (number_2 3)
    (number_3 5)
    (not(number_4 6))
    =>
    (assert (people_is parsial_lichenPlanopilaris))
)


(defrule centralCentrifugalCicatricialAlopecia ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (number_4 8)
    (number_5 17)
    (number_6 21)
    =>
    (assert (people_is centralCentrifugalCicatricialAlopecia))
)

(defrule parsial_centralCentrifugalCicatricialAlopecia ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (number_4 8)
    (number_5 17)
    (not(number_6 21))
    =>
    (assert (people_is parsial_centralCentrifugalCicatricialAlopecia))
)

(defrule parsial_centralCentrifugalCicatricialAlopecia2 ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (number_4 8)
    (not(number_5 17))
    (number_6 21)
    =>
    (assert (people_is parsial_centralCentrifugalCicatricialAlopecia2))
)

(defrule parsial_centralCentrifugalCicatricialAlopecia3 ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (number_4 8)
    (not(number_5 17))
    (not(number_6 21))
    =>
    (assert (people_is parsial_centralCentrifugalCicatricialAlopecia3))
)

(defrule parsial_centralCentrifugalCicatricialAlopecia4 ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (not(number_4 8))
    (number_5 17)
    (number_6 21)
    =>
    (assert (people_is parsial_centralCentrifugalCicatricialAlopecia4))
)

(defrule centralCentrifugalCicatricialAlopecia5 ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (not(number_4 8))
    (number_5 17)
    (not(number_6 21))
    =>
    (assert (people_is centralCentrifugalCicatricialAlopecia5))
)

(defrule parsial_centralCentrifugalCicatricialAlopecia6 ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (not(number_4 8))
    (not(number_5 17))
    (number_6 21)
    =>
    (assert (people_is parsial_centralCentrifugalCicatricialAlopecia6))
)

(defrule parsial_centralCentrifugalCicatricialAlopecia7 ;PENYAKIT 9
    (number_1 2)
    (number_2 3)
    (number_3 7)
    (not(number_4 8))
    (not(number_5 17))
    (not(number_6 21))
    =>
    (assert (people_is parsial_centralCentrifugalCicatricialAlopecia7))
)



(defrule alopeciaUniversalis ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (number_5 19)
    (number_6 22)
    (number_7 23)
    =>
    (assert (people_is alopeciaUniversalis))
)

(defrule parsial_alopeciaUniversalis ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (number_5 19)
    (number_6 22)
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis))
)

(defrule parsial_alopeciaUniversalis2 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (number_5 19)
    (not(number_6 22))
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis2))
)

(defrule parsial_alopeciaUniversalis3 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (number_5 19)
    (not(number_6 22))
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis3))
)

(defrule parsial_alopeciaUniversalis4 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (not(number_5 19))
    (number_6 22)
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis4))
)

(defrule parsial_alopeciaUniversalis5 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (not(number_5 19))
    (number_6 22)
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis5))
)

(defrule parsial_alopeciaUniversalis6 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (not(number_5 19))
    (not(number_6 22))
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis6))
)

(defrule parsial_alopeciaUniversalis7 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (number_4 16)
    (not(number_5 19))
    (not(number_6 22))
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis7))
)

(defrule parsial_alopeciaUniversalis8 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (number_5 19)
    (number_6 22)
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis8))
)

(defrule parsial_alopeciaUniversalis9 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (number_5 19)
    (number_6 22)
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis9))
)

(defrule parsial_alopeciaUniversalis10 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (number_5 19)
    (not(number_6 22))
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis10))
)

(defrule parsial_alopeciaUniversalis11 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (number_5 19)
    (not(number_6 22))
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis11))
)

(defrule parsial_alopeciaUniversalis12 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (not(number_5 19))
    (number_6 22)
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis12))
)

(defrule parsial_alopeciaUniversalis13 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (not(number_5 19))
    (number_6 22)
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis13))
)

(defrule parsial_alopeciaUniversalis14 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (not(number_5 19))
    (not(number_6 22))
    (number_7 23)
    =>
    (assert (people_is parsial_alopeciaUniversalis14))
)

(defrule parsial_alopeciaUniversalis15 ;PENYAKIT 10
    (number_1 2)
    (number_2 3)
    (number_3 10)
    (not(number_4 16))
    (not(number_5 19))
    (not(number_6 22))
    (not(number_7 23))
    =>
    (assert (people_is parsial_alopeciaUniversalis15))
)

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

