(define (cont-frac k)
  (define (compute result k)
    (cond ((= 0 k) result)
	  (else (compute (/ 1.0 (+ 1.0 result)) (- k 1)))))
  (compute 0.5 k))

