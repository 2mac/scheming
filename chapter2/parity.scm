;; SICP exercise 2.20
;; Copyright (C) 2015 David McMackins II
;;
;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.


(define (same-parity n . others)
  (define (same-parity-iter numbers test)
    (if (null? numbers)
	'()
	(let ((n (car numbers))
	      (next (same-parity-iter (cdr numbers) test)))
	  (if (test n)
	      (cons n next)
	      next))))
  (let ((test (if (even? n)
		  even?
		  odd?)))
    (cons n (same-parity-iter others test))))
