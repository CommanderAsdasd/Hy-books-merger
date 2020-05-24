#!/usr/bin/env hy

; (with [f (open 'assets/kafka_proces.txt')]
; (print f)
; )
; (with [f (open "assets/kafka_the_trial.txt")] (print (.read f)))
(setv a 4)

(setv kafka_en (with [kafka_en 
        (open "assets/kafka_the_trial.txt" :encoding "utf8")
        ]
       (.split (.read kafka_en) ".")))

(setv kafka_ru (with [kafka_ru 
        (open "assets/kafka_the_trial_ru.txt" :encoding "utf8")
        ]
       (.split (.read kafka_ru) ".")))


; (print (.join "." (for [eng kafka_en] 
;                   (for [ru kafka_ru]))))
(setv result_list [])

(for 
[iter (range (len kafka_en))]
(.append result_list
    (nth kafka_ru iter))
(.append result_list
    (nth kafka_en iter)))

(with [result_file (open "result_book.txt" "w" :encoding "utf8")]
(.write result_file (.join "." 
        (filter string? result_list))))

; (print result_list)

; (print (for [eng kafka_en] ( eng)))