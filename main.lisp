(defpackage gentle-journey
  (:use :cl))
(in-package :gentle-journey)

(format t "Hello world!~%")

(defun add1 (n)
  (+ n 1))

(defun add2 (n)
  (+ (add1 n) 1))

;; Exercise 1.4
(defun sub1 (n)
  (- n 1))

(defun sub2 (n)
  (- (sub1 n) 1))

;; Exercise 1.5
(defun alttwop (n)
  (equal (sub2 n) 0))

;; Exercise 1.6
(defun half (n)
  (/ n 2))

(defun half2 (n)
  (* n 0.5))

;; Exercise 1.7
(defun multi-digit-p (n)
  (> n 9))

;; Exercise 1.8
;; Changes input number's sign.

;; Exercise 1.9
(defun twomorep (n1 n2)
  (equal n1 (add2 n2)))

;; Exercise 1.10
(defun twomorepp (n1 n2)
  (equal (sub2 n1) n2))

;; Exercise 1.11
(defun average (n1 n2)
  (/ (+ n1 n2) 2))

;; Exercise 1.12
(defun more-than-half-p (n1 n2)
  (> n1 (/ n2 2)))

;; Exercise 1.13
;; NUMBERP's output will always be a symbol, therefore T

;; Exercise 1.14
;; Results: T, NIL, evaluation unchanged iff applied to a value.
;; NOT by itself isn't a valid input.

;; Exercise 1.15
(defun not-onep (n)
  (not (equal n 1)))

;; Exercise 1.16
(defun not-plusp (n)
  (not (> n 0)))

;; Exercise 1.17
(defun evenpp (n)
  (not (oddp n)))

;; Exercise 1.18
;; Whenever the input is -2.

;; Exercise 1.19
;; This function transforms all data into a boolean value.
;; Unless it's an undefined function: that results in a crash. Fuck you.

;; Exercise 1.20
;; This doesn't transform data into truth values beforehand, but...
;; it's probably fine? Yup: anything not NIL is T in Lisp
(defun xor (b1 b2)
  (not (equal b1 b2)))

;; Exercise 1.21
;; First one increments a predicate output and probably crashes.
;; For the second one, EQUAL is not a unary function. Crash.
;; Last one will always be true since a predicte output is always a symbol.

;; Exercise 1.22
;; All predicates are functions since they give unique outputs, but
;; not vice versa given functions don't always output T/NIL, although...
;; everything not NIL is T in Lisp.

;; Exercise 1.23
;; NOT and EQUAL/</>

;; Exercise 1.24
;; The former is a symbol, as is the latter.

;; Exercise 1.25
;; Huh? FALSE = crash for me. The answer is probably: because it's a symbol, and not NIL.

;; Exercise 1.26
;; Since anything not NIL is treated as T, I guess the former is technically
;; true. The latter has to be true by definition.

;; Exercise 1.27
;; (EVENP T), (EVENP 2 2)

;; Exercise 2.1 meh

;; Exercise 2.2
;; All but: first, third, fourth.

;; Exercise 2.3 meh

;; Exercise 2.4
;; ((BOWS, ARROWS),(FLOWERS, CHOCOLATES))

;; Exercise 2.5
;; 6, 3, 4, 4, 5, 6

;; Exercise 2.6
;; () = NIL, (()) = (NIL), ((())) = ((NIL)), (() ()) = (NIL NIL),
;; (() (())) = (NIL (NIL))

;; Exercise 2.7
;; The FIRST function is fed the output of REST, (IF YOU LIKE GEESE),
;; giving IF

;; Exercise 2.8
(defun my-third (l)
  (first (rest (rest l))))

;; Exercise 2.9
(defun my-thirdd (l)
  (second (rest l)))

;; Exercise 2.10
;; CAR = ((PHONE HOME)), CDR = NIL

;; Exercise 2.11
;; * *⟶ * *⟶      * *⟶ NIL
;; ↓     ↓          ↓
;; A     * *⟶ NIL  * *⟶ NIL
;;       ↓          ↓
;;      TOLL        * *⟶ NIL
;;                  ↓
;;                 CALL

;; Exercise 2.12
;; ka-dih-dih-der, very useful knowledge I'm sure.

;; Exercise 2.13
;; FUN = CAAAR, IN = CAADR, THE = CADADR, SUN = CAADDR

;; Exercise 2.14
;; This is annoying enough already.

;; Exercise 2.15
;; ((E F)), (C D), (B), CADAR, NIL, CAAR, (F), CADADDR

;; Exercise 2.16
;; List manipulation on the symbol FRED likely results in an error.

;; Exercise 2.17
;; POST, (NO BILLS), (POST NO), NIL, ((NO BILLS)), NIL, NIL

;; Exercise 2.18
(defun cons-make-list (e1 e2)
  (cons e1 (cons e2 NIL))
  )

;; Exercise 2.19
;; (FRED AND WILMA), (FRED (AND WILMA)), (FRED AND WILMA), (NIL), (NIL NIL)

;; Exercise 2.20
;; (NIL), (T NIL), (T), ((T)), ((IN ONE EAR) (OUT THE OTHER)), ((IN ONE EAR) OUT THE OTHER)

;; Exercise 2.21
(defun split-nester (e1 e2 e3 e4)
  (list (list e1 e2) (list e3 e4))
  )

;; Exercise 2.22
(defun duo-cons (e1 e2 l)
  (cons e1 (cons e2 l))
  )

;; Exercise 2.23
(defun two-deeper (e)
  (list (list e))
  )

(defun two-deeper-cons (e)
  (cons (cons e NIL) NIL)
  )

;; Exercise 2.24
;; CAAADR

;; Exercise 2.25
;; Because CONS constructs a cons cell from its inputs. They're related.

;; Exercise 2.26
;; Former results in: (A B C) ⟶ (B C) ⟶ 2; latter results in an error because CDR only accepts lists.

;; Exercise 2.27
;; Whenever it has a depth larger than 1.

;; Exercise 2.28
;; Yes. Base case is if cdr of a list is NIL, then we do car. Let's try...
(defun last-cadr (l)
  (cond ((equal (cdr l) NIL)
	 (car l))
	(t
	 (last-cadr (cdr l))))
  )
