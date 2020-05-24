; (print (.format "{test}" :test 1))

(-> 

(open "assets/Кафка_Процесс.txt" :encoding "utf8")
(.read)
; (.decode "utf-8")
)

; (for [x (enumerate [1 2 3])] (print x))
(setv x [1 2 3])

(print (list (take 2 x)))