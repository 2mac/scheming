;; SICP exercise 2.23
;; Copyright (C) 2015 David McMackins II
;;
;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.

(define (for-each proc items)
  (if (null? items)
      #t
      (begin
	(proc (car items))
	(for-each proc (cdr items)))))
