#lang racket
;; Quick Sort In Racket ( Scheme )
(define quick-sort
 (lambda (s)
  (if (< (length s) 2)
   s
   (append
    (quick-sort
	(filter
          (lambda (e)
	    (< e (last s)))
          s))
    (filter
      (lambda (e)
        (= e (last s)))
      s)
    (quick-sort
	(filter
          (lambda (e)
	    (> e (last s)))
          s))))))
