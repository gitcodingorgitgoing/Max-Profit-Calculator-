#lang scheme 

;Basic Procedure 
(define (ff x) (* x 10))


; Proc? Testing 
(procedure? (+ 5 5))

(procedure? ff)

; Map testing
(map ff '(5 6 7 8 9))


;Applied map testing


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

(map profit '(1 2 3 4 5 6))

;applied map testing with number-list generator

;numlist example 
(define (numlist n)
    (if (< n 1) '()
        (append (numlist (- n 1)) (list n))))

(map profit (numlist 29)) 



;filter only the positive combinations 

(filter positive? (map profit (numlist 29))) 












