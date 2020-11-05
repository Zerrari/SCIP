(define (f x) x)
(define (product f a)
  (cond ((= a 1) 1)
  (else (* (f a) (product f (- a 1))))))
