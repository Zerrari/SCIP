(define (miller-check n)
  (define (square x) (* x x))
  (define (even? x)
    (cond ((= (remainder x 2) 0) 1)
    (else 0)))
  (define (expmod base exp n)
    (cond ((= 0 exp) 1)
	  ((= (even? exp) 1) (remainder (square (expmod base (/ exp 2) n)) n))
	  (else (remainder (* base (expmod base (- exp 1) n)) n))))
  (define (miller-test n)
    (define (try-it a)
      (= (expmod a (- n 1) n) 1))
    (try-it (+ (random (- n 1)))))
  (define (miller n times)
    (cond ((= times 0) 1)
	  ((miller-test n) (miller n (- times 1)))
	  (else 0)))
  (miller n 10))