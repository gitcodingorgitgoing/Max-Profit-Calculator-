#lang scheme 

;Max Profit Calculator
;This program aims to run-through the different combinations of prices and avg attendance and spit out
;the combination which creates the maximum profit possible

;WISH LIST
; constant data
; A program that calculates the change in population for every change in price of 0.2 dollars
; A program that calculates the change in pirce for every change in price of 0.2 dollars
; A program that calculates the profit earned for a certain combination of price of ticket and population attendance 
; A program that calculates the range of different combination between price and attendance possible 
; A program that uses the profit calculator and the calculated range in order to generate a list of
;potential profits 


;constant data 

(define starter-price 5)
(define stater-pop 120)
(define ratio 24) 





; A program that calculates the change in population for every change in price of 0.2 dollars
(define (deviation-pop y) (+ 120 (* 30 y)))

(deviation-pop -2) ;raise price 
(deviation-pop 2) ; lessen price



; A program that calculates the change in pirce for every change in price of 0.2 dollars
(define (deviation-price y) (+ 5 (* -.2 y)))

(deviation-price -2) ;lessen price 
(deviation-price 2) ;raise price




; A program that calculates the profit earned for a certain combination of price of ticket and population attendance 
;Finding Profit 
(define (profit x) (* (deviation-pop x) (deviation-price x)))

(profit -2) ; heighten price gives negative integer
(profit 2) ;lower price gives positive integer
;so relationship here is inversed 


;numlist example 
(define (numlist n)
    (if (< n 1) '()
        (append (numlist (- n 1)) (list n))))

(numlist 10) 

; A program that calculates the range of different combination between price and attendance possible 
; Finding range

(define max-price-reduction-times (/ 5 .15))

max-price-reduction-times

;answer is 33, which translates into positive 33 integers because price is being reduced 

(define max-pop-reduction-times (/ 120 30))

max-pop-reduction-times

;answer is 4, which translates into negative 4 integers because price is being increased 

(define real-range (- max-price-reduction-times max-pop-reduction-times))

real-range 

;answer is 29, which translates into positive 29 integers, because price is being reduced 

; A program that uses the profit calculator and the calculated range in order to generate a list of
;potential profits 

;Basic Procedure 
(define (ff x) (* x 10))


; Proc? Testing 
(procedure? (+ 5 5))

(procedure? ff)

; Map testing
(map ff '(5 6 7 8 9))

;Applied map testing

(map profit '(1 2 3 4 5 6))

;applied map testing with number-list generator

;numlist example 
(define (numlist n)
    (if (< n 1) '()
        (append (numlist (- n 1)) (list n))))

(map profit (numlist 29)) 



;filter only the positive combinations 

(filter positive? (map profit (numlist 29))) 



