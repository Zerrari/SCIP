(define  (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g x))
		 dx)))
(define (newton-transform g)
  (lambda (x)
    (- x(/ (g x) ((deriv g) x)))))
(define (newton-method guess)
  
  (newton-transform))
