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
  (list (list e1 e2) (list e3 e4)))

;; Exercise 2.22
(defun duo-cons (e1 e2 l)
  (cons e1 (cons e2 l)))

;; Exercise 2.23
(defun two-deeper (e)
  (list (list e)))

(defun two-deeper-cons (e)
  (cons (cons e NIL) NIL))

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
  (cond ((equal (cdr l) NIL) (car l))
	(t (last-cadr (cdr l)))))

;; Exercise 2.29
(defun unary-add (l)
  (cons 'x l))

;; Exercise 2.30
;; Subtracts 2.

;; Exercise 2.31
(defun unary-zerop (l)
  (equal l NIL))

;; Exercise 2.32
(defun unary-greaterp (l1 l2)
  (> (length l1) (length l2)))

;; Exercise 2.33
;; Complement of unary-zerop. Which means...
(defun unary-zeropp (l)
  (not (car l)))

;; Exercise 2.34
;; (cons 'a (cons 'b (cons 'c 'd)))

;; Exercise 2.35
;; * *  ⟶   * *⟶ NIL
;; ↓         ↓
;; * *⟶  B  * *⟶ D
;; ↓         ↓
;; A         C

;; Exercise 2.36
;; (cons 'a (cons 'b (cons 'c ...)))
;; When you cons c, you're already done with cons a, which you need.
(defun cons-circular-list (l)
  (cons (car l) (cdr l)))
;; Passing '(x) will just construct the same list with new pointers
;; from a new cons construct. I think...

;; Exercise 3.1
;; -3 self-evaluates, result of ABS is 3, 3 self-evaluates, result of equal
;; becomes T, result of not becomes NIL.

;; Exercise 3.2
;; (/ (+ 8 12) 2)

;; Exercise 3.3
;; (+ (sqrt 3) (sqrt 4))

;; Exercise 3.4
;; ⟶ (- 8 2)
;; |       8 self-evaluates
;; |       2 self-evaluates
;; ⟶ Enter - with inputs 8 and 2
;; |
;; ⟶ Result of - is 6

;; ⟶ (not (oddp 4))
;; | ⟶ (oddp 4)
;; | |      4 self-evaluates
;; | ⟶ Enter oddp with input 4
;; | |
;; | ⟶ Result of oddp is nil
;; ⟶ Enter not with input nil
;; |
;; ⟶ Result of not is t

;; ⟶ (> (* 2 5) 9)
;; | ⟶ (* 2 5)
;; | |      2 self-evaluates
;; | |      5 self-evaluates
;; | ⟶ Enter * with inputs 2 and 5
;; | |
;; | ⟶ Result of * is 10
;; |      9 self-evaluates
;; ⟶ Enter > with inputs 10 and 9
;; |
;; ⟶ Result of > is t

;; ⟶ (not (equal 5 (+ 1 4)))
;; | ⟶ (equal 5 5)
;; | | ⟶ (+ 1 4)
;; | | |      1 self-evaluates
;; | | |      4 self-evaluates
;; | | ⟶ Enter + with 1 and 4
;; | | |
;; | | ⟶ Result of + is 5
;; | ⟶ (equal 5 5)
;; | |      5 self-evaluates
;; | |      5 self-evaluates (does this second one happen?)
;; | ⟶ Enter equal with inputs 5 and 5
;; | |
;; | ⟶ Result of equal is t
;; ⟶ Enter not with input t
;; |
;; ⟶ Result of not is nil

;; Exercise 3.5
(defun half (n) (/ n 2))
(defun cube (n) (* n (* n n)))
(defun onemorep (n1 n2) (equal (- n1 1) n2))

;; Exercise 3.6
(defun pythag (x y)
  (sqrt (+
	 (expt x x)
	 (* y y))))

;; Exercise 3.7
(defun kilometers-per-liter (initial-odometer-reading final-odometer-reading liters-consumed)
  (/ (- final-odometer-reading initial-odometer-reading) liters-consumed))
;; Imagine not using the metric system.

;; Exercise 3.8
;; 2 ⟶ * inside big box where second input to * is 2, ⟶ 4. Box notation is deprecated.

;; Exercise 3.9
;; (5 6 7), (5 list 6 7), (3 from 9 gives 6), 6, (is short for construct)

;; Exercise 3.10
;; Missing quote on '(the quick brown fox), missing quotes on symbols 'and and 'is,
;; inapporopiate quote on (length ()), missing quote on '(seymour marvin), same.

;; Exercise 3.11
(defun longer-than (l1 l2)
  (> (length l1) (length l2)))

;; Exercise 3.12
(defun addlength (l)
  (cons (length l) l))
;; (4 3 a b c)

;; Exercise 3.13
;; Two. caller and callee. (hello wanda this is fred calling)

;; Exercise 3.14
;; Variables aren't used. (hello callee this is caller calling)

;; Exercise 3.15
;; As a variable and as a self-evaluating symbol. (aardvark is a word), (word is a word).

;; Exercise 3.16
;; (moe (moe larry) larry larry). Style warning on unused variable moe.

;; Exercise 3.17
;; Everything not nil evaluates to t. There's a conflict as they're already defined, and self-evaluates.

;; Exercise 3.18
;; Terse and expressive.

;; Exercise 3.19
;; (grapes of wrath), (t is not nil), list, moose. Last one fails as quote should be outside,
;; or a valid function call should be made. First element is treated as a function.

;; Exercise 3.20
;; (bear dancing), too many arguments error, (nil zowie), (second first)

;; Exercise 3.21
;; First one doesn't use its arguments. Second one has two bodies. Third one has function arguments.

;; Exercise 3.22 Mostly irrelevant in my case.
(defun myfun (e1 e2)
  (cons (cons e1 nil) (cons e2 nil)))

(defun firstp (e l)
  (equal e (first l)))

(defun mid-add1 (l)
  (cons (car l) (cons (add1 (cadr l)) (cddr l))))

(defun f-to-c (n)
  (* 5 (/ (- n 32) 9)))
;; Adds 1 to t or nil, which is highly illegal.

;; Exercise 3.23
;; (lambda (x) (* x 2)), (lambda (x) (* x x)), (lambda (x y) (equal (- 1 x) (y)))

;; Exercise 3.24
;; alpha (+ x 2) evaluates to 5, charlie (- 3 1) -- 3 coming from alpha -- evaluates to 2,
;; then finally bravo (* 5 2) evaluates to 10. No diagram please, too much work.

;; Exercise 3.25
;; (cons t nil), (t), undefined symbol t, (t), nil, (eval nil), nil.

;; Exercise 4.1
;; Odd/even functions are prime candidates for bitwise manipulation. Just for fun.
(defun bitwise-oddp (n)
  (equal (subseq (make-binary n) (- (length (make-binary n)) 1)) "1"))

(defun make-binary (e)
  (format nil "~b" e))

(defun make-even (n)
  (if (bitwise-oddp n) (+ 1 n) n))

;; Exercise 4.2
(defun further (n)
  (if (< n 0) (- n 1) (+ n 1)))

;; Exercise 4.3
(defun my-not (e) (if e nil t))

;; Exercise 4.4
(defun ordered (n1 n2)
  (if (> n1 n2) (list n2 n1) (list n1 n2)))

;; Exercise 4.5
;; 3, 2, 1

;; Exercise 4.6
(defun my-abs (n)
  (cond ((< n 0) (- n))
	(t n)))

;; Exercise 4.7
;; First is incorrect: "(symbolp x) 'symbol" not encapsulated, second one is fine.
;; Third is incorrect: "('symbol)" doesn't need parenthesis, same with "(t 'not-a-symbol)"

;; Exercise 4.8
(defun emphasize (l)
  (cond ((equal (first l) 'good) (cons 'great (rest l)))
	 ((equal (first l) 'bad) (cons 'awful (rest l)))
	 (t (cons 'very l)))))

;; Exercise 4.9
;; As written it'll just return whatever is passed to it.
(defun make-odd (n)
  (cond ((oddp n) n)
	(t (+ n 1))))

;; Exercise 4.10
;; Bitwise opportunity: string length. But eh.
(defun constrain (n min max)
  (cond ((< n min) min)
	((> n max) max)
	(t n)))

(defun constrain-nested (n min max)
  (if (< n min) min (if (> n max) max n)))

;; Exercise 4.11
;; Obviously invalid number of argument for (firstzero 3 0 4)
(defun firstzero (l)
  (cond ((equal (car l) 0) "first")
	((equal (cadr l) 0) "second")
	((equal (caddr l) 0) "third")
	(t "none")))

;; Exercise 4.12
;; I... I couldn't stop myself...
(defun cycle (n)
  (cond ((< n 99) (+ n 1))
	((> n 98) (cycle (- n 99)))))

(defun do-cycle (n)
  (if (not (equal n 0))
      (cons (cycle (abs n)) (if (> n 0) (do-cycle (- n 1)) (do-cycle (+ n 1)))) (cons 1 nil)))

;; Exercise 4.13
(defun howcompute (n1 n2 result)
  (cond ((equal (+ n1 n2) result) "Sum")
	((equal (* n1 n2) result) "Product")
	((equal (/ n1 n2) result) "Rest")
	(t "Beats me, anon.")))
