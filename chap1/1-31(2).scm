(define (square x) (* x x))
(define (product a)
  (cond ((= a 3) (/ 8.0 9.0))
	(else (* (/ (* (- a 1) (+ a 1)) (square a)) (product  (- a 2))))))
