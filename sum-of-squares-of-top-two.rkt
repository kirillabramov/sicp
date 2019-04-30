;; BEGIN (write your solution here)
(define (sum-of-squares-of-top-two a b c)
    (define (square x) (* x x))
    (cond ((and (< a b) (< a c)) (+ (square b) (square c)))
          ((and (< b a) (< b c)) (+ (square a) (square c)))
          (else (+ (square a) (square b))))
)
;; END
