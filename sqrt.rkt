(define (abs x)
  (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess) guess
        (sqrt-iter (improve guess))))
        
  (define (improve guess)
    (average guess (/ x guess)))
    
  (define (average a b) (/ (+ a b) 2))
  
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.01))
    
  (sqrt-iter 1.0))

(sqrt 9)
