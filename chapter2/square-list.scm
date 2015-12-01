;; SICP exercise 2.21
;; Copyright (C) 2015 David McMackins II
;;
;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.

;; pair-level implementation
(define (square-list items)
  (if (null? items)
      '()
      (cons (expt (car items) 2)
	    (square-list (cdr items)))))

;; list-level implementation
(define (square-list items)
  (map (lambda (x) (expt x 2))
       items))
