(define (multiply a b)
  (define (max? count max-count)
    (cond ((> (* count 2) max-count) 0)
	  (else 1)))
  (define (compute a product count max-count)
    (cond ((= count max-count) product)
	  ((max? count max-count) (compute a (* product 2) (* count 2) max-count))
	  (else (compute a (+ product b) (+ count 1) max-count))))
  (compute a a 1 b))



