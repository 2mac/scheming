;; SICP exercise 2.28
;; Copyright (C) 2015 David McMackins II
;;
;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.

(define (fringe tree)
  (define (fringe-type-fix item)
    (if (list? item)
	item
	(list item)))
  (cond ((null? tree) '())
	((not (pair? tree)) tree)
	(else (let ((a (fringe-type-fix (fringe (car tree))))
		    (b (fringe-type-fix (fringe (cdr tree)))))
		(append a b)))))
