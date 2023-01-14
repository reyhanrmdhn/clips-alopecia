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
    (not(number_4 20))
    =>
    (assert (people_is androgeneticAlopecia2))
)

(defrule parsial_androgeneticAlopecia
    (number_1 9)
    (number_2 17)
    (not(number_3 18))
    (number_4 20)
    =>
    (assert (people_is parsial_androgeneticAlopecia))
)

(defrule parsial_androgeneticAlopecia2
    (number_1 9)
    (number_2 17)
    (not(number_3 18))
    (not(number_4 20))
    =>
    (assert (people_is parsial_androgeneticAlopecia2))
)

(defrule parsial_chronicCutaneousLupusErytematosus
    (number_1 9)
    (not(number_2 17))
    (number_3 18)
    (number_4 20)
    =>
    (assert (people_is parsial_chronicCutaneousLupusErytematosus))
)

(defrule parsial_chronicCutaneousLupusErytematosus2
    (number_1 9)
    (not(number_2 17))
    (number_3 18)
    (not(number_4 20))
    =>
    (assert (people_is parsial_chronicCutaneousLupusErytematosus2))
)


