(defpackage gentle-journey
  (:use :cl))
(in-package :gentle-journey)

(format t "Hello world!~%")

(defun ADD1 (n)
  (+ n 1))

(defun ADD2 (n)
  (+ (ADD1 n) 1))

;; Exercise 1.4
(defun SUB1 (n)
  (- n 1))

(defun SUB2 (n)
  (- (SUB1 n) 1))

;; Exercise 1.5
(defun ALTTWOP (n)
  (EQUAL (SUB2 n) 0))

;; Exercise 1.6
(defun HALF (n)
  (/ n 2))

(defun HALF2 (n)
  (* n 0.5))

;; Exercise 1.7
(defun MULTI-DIGIT-P (n)
  (> n 9))

;; Exercise 1.8
;; Changes input number's sign.

;; Exercise 1.9
(defun TWOMOREP (n1 n2)
  (EQUAL n1 (ADD2 n2)))

;; Exercise 1.10
(defun TWOMOREPP (n1 n2)
  (EQUAL (SUB2 n1) n2))

;; Exercise 1.11
(defun AVERAGE (n1 n2)
  (/ (+ n1 n2) 2))

;; Exercise 1.12
(defun MORE-THAN-HALF-P (n1 n2)
  (> n1 (/ n2 2)))

;; Exercise 1.13
;; NUMBERP's output will always be a symbol, therefore T

;; Exercise 1.14
;; Results: T, NIL, evaluation unchanged iff applied to a value.
;; NOT by itself isn't a valid input.

;; Exercise 1.15
(defun NOT-ONEP (n)
  (NOT (EQUAL n 1)))

;; Exercise 1.16
(defun NOT-PLUSP (n)
  (NOT (> n 0)))

;; Exercise 1.17
;; Exercise wants (NOT (EVENP n)), but not that this only holds for integers.

;; Exercise 1.18
;; Whenever the input is -2.

;; Exercise 1.19
;; This function transforms all data into a boolean value.
;; Unless it's an undefined function: that results in a crash. Fuck you.

;; Exercise 1.20
;; This doesn't transform data into truth values beforehand, but...
;; it's probably fine? Yup: anything not NIL is T in Lisp
(defun XOR (b1 b2)
  (NOT (EQUAL b1 b2)))

;; Exercise 1.21
;; First one increments a predicate output and probably crashes.
;; For the second one, EQUAL is not a unary function. Crash.
;; Last one will always be true since a predicte output is always a symbol.

;; Exercise 1.22
;; All predicates are functions since they give unique outputs, but
;; not vice versa given functions don't always output T/NIL

;; Exercise 1.23
;; NOT and EQUAL/</>

;; Exercise 1.24
;; The former is a symbol, as is the latter.

;; Exercise 1.25
;; Huh? FALSE = crash for me. The answer is probably: because it's a symbol.

;; Exercise 1.26
;; Since anything not NIL is treated as T, I guess the former is technically
;; true. The latter has to be true by definition.

;; Exercise 1.27
;; (EVENP T), (EVENP 2 2)
