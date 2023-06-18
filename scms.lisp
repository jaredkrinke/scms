(defpackage :scms
  (:documentation "Random utility macros and functions")
  (:use :cl)
  (:export #:with-gensyms
	   #:alist-path))

(in-package :scms)

(defun alist-path (object &rest keys)
  "Walk down an AList path"
  (labels ((alist-path-recursive (object keys)
	     (if keys
		 (alist-path-recursive (cdr (assoc (car keys) object)) (cdr keys))
		 object)))
    (alist-path-recursive object keys)))
