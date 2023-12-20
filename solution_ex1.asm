; Assembly code
.at 20
n:     .word 000
zero:  .word 000
one:   .word 001
ten:   .word 010

.at 30
main:  INP n 
       LDA ten
       SUB n     ; Acc = 10 - n
       JAZ sup
inf:   OUT zero  ; Case < 10
       LDA zero
       JAZ end
sup:   OUT one   ; Case >= 10
end:   HRS 00