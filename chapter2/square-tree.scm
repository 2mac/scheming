;; SICP exercise 2.30 (and an implementation from 2.31)
;; Copyright (C) 2016 David McMackins II
;;
;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.

(load "tree-map.scm")

(define (square-tree tree)
  (cond ((null? tree) '())
	((pair? tree) (cons (square-tree (car tree))
			    (square-tree (cdr tree))))
	(else (expt tree 2))))

(define (square-tree-map tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (square-tree-map sub-tree)
	     (expt sub-tree 2)))
       tree))

;; from exercise 2.31
(define (square-tree-tmap tree)
  (tree-map (lambda (x) (expt x 2)) tree))
