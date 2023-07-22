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
    (cons (cycle (abs n)) (if (> n 0) (do-cycle (- n 1)) (do-cycle (+ n 1))))
  (cons 1 nil)))

;; Exercise 4.13
(defun howcompute (n1 n2 result)
  (cond ((equal (+ n1 n2) result) "Sum")
	((equal (* n1 n2) result) "Product")
	((equal (/ n1 n2) result) "Rest")
	(t "Beats me, anon.")))

;; Exercise 4.14
;; foe, fee, foe, nil, yes, t

;; Exercise 4.15
(defun geq (n1 n2)
  (or (equal n1 n2) (> n1 n2)))

;; Exercise 4.16
(defun squareDoubleDiv (n)
  (cond ((< n 0) (* n n))
	((and (oddp n) (< n 0)) (* n 2))
	(t (/ n 2))))
;; Apparently (* n 2) is unreachable code... huh?

;; Exercise 4.17
(defun childCheck (e1 e2)
  (or (and (or (equal e1 'boy) (equal e1 'girl)) (equal e2 'child))
      (and (or (equal e1 'man) (equal e1 'woman)) (equal e2 'adult))))

;; Exercise 4.18
(defun playRPS (e1 e2)
  (cond ((or
	  (and (equal e1 'rock) (equal e2 'scissors))
	  (and (equal e1 'paper) (equal e2 'rock)))
	 (and (equal e1 'scissors) (equal e2 'paper)) 'first-wins)
	((and
	  (not (or (equal e1 'rock) (equal e1 'paper) (equal e1 'scissors)))
	  (not (or (equal e2 'rock) (equal e2 'paper) (equal e2 'scissors)))) 'wtf-are-you-guys-doing)
	((equal e1 e2) 'tie)
	((not (or (equal e1 'rock) (equal e1 'paper) (equal e1 'scissors))) 'second-wins)
	((not (or (equal e2 'rock) (equal e2 'paper) (equal e2 'scissors))) 'first-wins)
	(t 'second-wins)))
;; For some reason (playRPS 'scissors 'paper) returns second-wins, the last case.
;; Line 504 looks fine though...

;; Exercise 4.19
;; (cond ((equal x 'x) t) ((equal y 'y) t) ((equal z 'z) t) ((equal w 'w) t))
;; (if (equal x x') t (if (equal y y') t (if (equal z 'z) t (if (equal w 'w) t))))

;; Exercise 4.20
(defun compareIfs (x y)
  (if (equal x y) 'numbers-are-the-same
      (if (< x y) 'first-is-smaller
	  (if (> x y) 'first-is-bigger))))

(defun compareAndOr (x y)
  (or (and (equal x y) 'numbers-are-the-same)
      (and (< x y) 'first-is-smaller)
      (and (> x y) 'first-is-bigger)))

;; Exercise 4.21
(defun gTestCond (x y)
  (cond ((> x y) t) ((zerop x) t) ((zerop y) t)))

(defun gTestIfs (x y)
  (if (> x y) t (if (zerop x) t (if (zerop y) t))))

;; Exercise 4.22
(defun boilingp (temp scale)
  (cond ((equal scale 'celsius) (> temp 100))
	((equal scale 'fahrenheit) (> temp 212))))

(defun boilingpAndOr (temp scale)
  (or (and (equal scale 'celsius) (> temp 100))
      (and (equal scale 'fahrenheit) (> temp 212))))

(defun boilingpIfs (temp scale)
  (if (equal scale 'celsius) (> temp 100) (if (equal scale 'fahrenheit) (> temp 212))))

;; Exercise 4.23
;; Assume n = number of where-is cond clauses. where-is-2 = n - 1. where-is-3 = (n - n) + 1.

;; Exercise 4.24
;; To control/check inputs.

;; Exercise 4.25
;; eh, doesn't afraid of anything and simply returns nil if test fails.

;; Exercise 4.26
;; Because you can nest ifs: (if t t (if t t (...)))

;; Exercise 4.27
;; I'm guessing nil. Edit: I was right.

;; Exercise 4.28
;; We want to return the result of true-part... Or rather, return nil. and can return nil,
;; but then it always will... Close: (or (and test (or true-part false-part))). But returns
;; nil when test case fails, when we want foo... Am I getting trolled? Edit: looked at the
;; answer, and now I feel stupid. (or (and test true-part) (and (not test) false-part))

;; Exercise 4.29
(defun logicalAndIf (x y)
  (if x (if y t)))

(defun logicalAndCond (x y)
  (cond (x (cond (y t)))))

;; Exercise 4.30
(defun logicalOr (x y)
  (if x t (if y t)))

(defun logicalOrAlt (x y)
  (or (and x t) (and y t)))

;; Exercise 4.31
;; As much a boolean as the previous functions here. No need for a logical-not function.

;; Exercise 4.32
;; | x | y | or |
;; | t | t | t  |
;; | t |nil| t  |
;; |nil| t | t  |
;; |nil|nil| nil|

;; Exercise 4.33 and 4.34
;; 2^3 = 8
;; Pretty sure this is the most logical interpretation...
;; The book doesn't care about the truth value of y, but then why does z matter? Mine's better.
;; | x | y | z | if |
;; | t | t | t | nil|
;; | t | t |nil| t  |
;; | t |nil| t | nil|
;; | t |nil|nil| nil|
;; |nil| t | t | nil|
;; |nil| t |nil| nil|
;; |nil|nil| t | t  |
;; |nil|nil|nil| nil|

;; Exercise 4.35
;; (or (and x t) (and y t))? What three input or? Was I supposed to write it?
(defun deMorganAnd (x y) (not (or (not x) (not y) nil)))
(defun deMorganOr (x y) (not (and (not (or x nil)) (not (or y nil)))))

;; Exercise 4.36
;; | x | y |nand|
;; | t | t | nil|
;; | t |nil| t  |
;; |nil| t | t  |
;; |nil|nil| t  |

;; Exercise 4.37
;; The and one was a nightmare. Mostly because I thought nand was true iff both x y were nil...
;; or came immediately when trying to construct the and.
(defun nand (x y) (not (and x y)))
(defun nandAnd (x y) (nand (nand (nand (nand x nil) (nand y t)) (nand (nand x t) (nand y nil))) t))
(defun nandOr (x y) (nand (nand x t) (nand y t)))

;; Exercise 4.38
(defun notOr (x y) (not (or (and x t) (and y t))))
(defun notOrNot (x) (notOr x x))
;; Found these quick by simply turning key nil/t to their opposite.
(defun notOrAnd (x y) (notOr (notOr x nil) (notOr y nil)))
(defun notOrOr (x y) (notOr (notOr (notOr (notOr x nil) (notOr y t)) (notOr (notOr x t) (notOr y nil))) nil))

;; Exercise 4.39
;; In logic we have things called conjunctive/disjunctive normal forms, but both contain... both.
;; So I'm going to guess no.

;; Exercise 5.1
(defun goodStyle (p)
  (let ((q (+ p 5)))
  (list 'result 'is q)))

;; Exercise 5.2
;; The result of variable assignments. The changing value as opposed to the returned value itself.

;; Exercise 5.3
;; Local variables are only reachable within their defined lexical context. Global are... global.

;; Exercise 5.4
;; Otherwise you wouldn't be able to name a variable since its first argument would be evaluated.

;; Exercise 5.5
;; I guess technically, but the former implies no dependencies between local variables... but
;; does that matter with only one local variable? The latter would likely cause confusion.

;;; Exercise 5.6
;; a.
(defun throwDie nil
  "Returns a random number between 1 and 6."
  (+ (random 6) 1))
;; b.
(defun throwDice nil
  "Returns a list of two throwDie, hereinafter a throw."
  (list (throwDie) (throwDie)))
;; c.
(defun snakeEyesP (throw)
  "Checks if a throw contains two ones."
  (and (equal 1 (car throw)) (equal (car throw) (cadr throw)) t))
(defun boxcarsP (throw)
  "Checks if a throw contains two sixes."
  (and (equal 6 (car throw)) (equal (car throw) (cadr throw)) t))
;; d. It's possible instantLossP is meant to check individual die too, but it wasn't specified...
(defun instantWinP (throw)
  "Checks if a throw is an instant win, e.g. result equal to 7 or 11."
  (or (equal 7 (reduce '+ throw))
    (equal 11 (reduce '+ throw))))
(defun instantLossP (throw)
  "Checks if a throw is an instant loss, e.g. reslt equal to 2, 3 or 12."
  (or (equal 2 (reduce '+ throw))
      (equal 3 (reduce '+ throw))
      (equal 12 (reduce '+ throw))))
;; e.
(defun sayThrow (throw)
  "Returns either the sum of a throw or the symbols SNAKE-EYES or BOXCARS if sum is equal to 2 or 12"
  (cond ((snakeEyesP throw) 'SNAKE-EYES)
	((boxcarsP throw) 'BOXCARS)
	(t (reduce '+ throw))))
;; f. Stole the flatten function online because I'm committed to this solution.
(defun flatten (x &optional stack out)
  "Returns a list with the elements of all sublists on the top level."
  (cond ((consp x) (flatten (rest x) (cons (first x) stack) out))
        (x         (flatten (first stack) (rest stack) (cons x out)))
        (stack     (flatten (first stack) (rest stack) out))
        (t out)))

(defun craps nil
  "Plays a dumb dice game."
  (flatten (let ((throw (throwDice)))
    (list 'Throw (car throw) 'and (cadr throw) '-- (sayThrow throw) '--
		   (cond ((equal 'SNAKE-EYES (sayThrow throw)) (list 'You 'lose))
			 ((equal 'BOXCARS (sayThrow throw)) (list 'You 'win))
			 (t (list 'Your 'point 'is (sayThrow throw))))))))
;; g. Surely I can reduce code duplication here... another time? Not required anyway. Reused
;;    last-cadr from way back on first attempt, but realized I was doing more than necessary.
(defun tryForPoint (n)
  "Simulates a continuation of craps by playing for a point. 7 results in a loss."
  (flatten (let ((throw (throwDice)))
    (list 'Throw (car throw) 'and (cadr throw) '-- (sayThrow throw) '--
		   (cond ((equal n (reduce '+ throw)) (list 'You 'win))
			 ((equal 7 (reduce '+ throw)) (list 'You 'lose))
			 (t (list 'Throw 'again)))))))

;; Exercise 6.1
;; This is because nthcdr returns nil, and the car of nil is nil, etc.

;; Exercise 6.2
;; An error since the symbol D returned by nthcdr is not a list, therefore car cannot operate on it.
;; If it was a list and not a symbol, it would return the head of that list.

;; Exercise 6.3
;; The input list (the first element is also the last in a singelton list).

;; Exercise 6.4
;; The same as above, the input list (parantheses intact).

;; Exercise 6.5
;; (setf line '(Roses are red))
;; (RED ARE ROSES), (RED), ARE, (ROSES ARE RED), (ROSES ARE RED ROSES), (RED ROSES ARE RED),
;; (ROSES (RED)), ((RED) ROSES ARE RED), (ROSES RED), (ROSES ARE RED VIOLETS ARE BLUE).

;; Exercise 6.6
(defun lastElement (l) (car (last l)))
(defun lastElementReverse (l) (car (reverse l)))
(defun lastElementNthLength (l) (nth (- (length l) 1) l))

;; Exercise 6.7
(defun nextToLast (l) (cadr (reverse l)))
(defun nextToLastNth (l) (nth (- (length l) 2) l))

;; Exercise 6.8 - Weird function name
;; Efficieny is for nerds.
(defun myButLast (l) (reverse (cdr (reverse l))))

;; Exercise 6.9
;; We reverse the list, take the last element (first of the original), then unlist the result
;; with first. A very roundabout way of doing car.

;; Exercise 6.10
(defun palindromeP (l) (equal l (reverse l)))

;; Exercise 6.11 - I should try to write one that's of equal length (iff possible)
(defun makePalindrome (l) (append l (reverse l)))

;; Exercise 6.12
;; Going by how the other functions in this chapter works, it copies the sublist it returns.

;; Exercise 6.13
;; It should be NIL or skill issues.

;; Exercise 6.14
;; The set itself.

;; Exercise 6.15
;; Isn't a sublist a "true value"? So we're writing member using member?
;; Took a peek at the answer. Pretty much.
(defun containsArticleP (sent) (intersection sent '(the a an)))
(defun containsArticleMemberP (sent)
  (or (member 'the sent)
      (member 'a sent)
      (member 'an sent)))
;; This function is identical to the answer, but doesn't work. Weird. Undefined function error.
(defun containArticleAndP (sent)
  (not (and (not (member 'the sent))
	    (not (member 'a sent))
	    (not (member 'an sent)))))

;; Exercise 6.16
;; The set itself.

;; Exercise 6.17
;; The set itself.

;; Exercise 6.18
(defun addVowels (letters) (union letters '(a e i o u)))

;; Exercise 6.19
;; In set theory, set difference with the empty set returns the same set, so I would expect the
;; same here. After all, NIL has no elements, so there's nothing to remove.

;; Exercise 6.20
;; It would copy the first input to construct a new list based upon the second input. The second
;; input lists elements to be removed, so there would not be any need to copy it, even if that
;; element isn't found in the first input.

;; Exercise 6.21 - Oddly formulated exercise, but I think they had the following in mind.
(defun mySubsetP (x y)
  "Accomplishes the same as SUBSETP because reasons"
  (cond ((equal (set-difference y x) nil) t)
        (t nil)))

;; Exercise 6.22
;; (no soap radio water), a, (soap), nil, a, (water), nil

;; Exercise 6.23
;; length

;; Exercise 6.24
(defun setEqual (x y)
  "Returns T if both sets are equal."
  (cond ((and (subsetp x y) (subsetp y x)) t)))

;; Exercise 6.25
(defun properSubsetP (x y)
  "Returns T if x is a proper subset of y"
  (cond ((and (subsetp x y) (not (subsetp y x))) t)))

;; Exercise 6.26
;; a.
(defun rightSide (l)
  (cdr (member '-vs- l)))
;; b.
(defun leftSideDumb (l)
  (cdr (member '-vs- (reverse l))))
;; Didn't like the above. Also, hints are OP in this assignment.
(defun leftSide (l)
  (leftSideHelper l nil))
(defun leftSideHelper (l l2) ; could avoid this function with lambda. Meh.
  (cond ((equal (car l) '-vs-) l2)
	((car l) (leftSideHelper (cdr l) (cons (car l) l2)))
	(t nil)))
;; c.
(defun countCommon (l)
  (length (intersection (leftside l) (rightside l))))
;; d. Misunderstood and wrote a better function. Cons'd "common features" after realizing.
(defun compare (l)
  (cons (countCommon l) (cons 'common (cons 'features (intersection (leftSide l) (rightside l))))))
;; e. Yup.

;; Exercise 6.27
;; It's been argued earlier that anything not nil can be seen as t, so why not?

;; Exercise 6.28
;; (banana . fruit), (apple . fruit), (lettuce . veggie), (celery . veggie)

;; Exercise 6.29
;; length again?

;; Exercise 6.30
(defvar books
  '((1984                    . George-Orwell)
    (Brave-New-World         . Aldous-Huxley)
    (The-Silmarillion        . John-Ronald-Reuel-Tolkien)
    (Consciousness-Explained . Daniel-Dennett)
    (The-Extended-Phenotype  . Richard-Dawkins)))

;; Exercise 6.31
(defun whoWrote (title)
  (cdr (assoc title books)))

;; Exercise 6.32
;; Reverse will only do so for the top level, so I assume no change.

;; Exercise 6.33
;; Just use car instead of cdr? Nope, guess we'll need to use rassoc instead, or reverse
;; the dot pairs in the table. Ok, for some reason the difference of assoc/rassoc first
;; clicked now. Was sure I saw it working both ways in examples earlier...

;; Exercise 6.34
;; Have the state be the key, so: (pennsylvania pittsburgh johnstown)

;; Exercise 6.35
;; Skipping this at it seems very trivial: ((sleep . eat) (eat . wait) ...).

;; Exercise 6.36
;; Quite the brainteaser despite immediately knowing what to do. Doesn't handle empty/
;; singleton lists though, but that's a simple check.
(defun swapFirstLast (l)
  (cons (car (reverse l))
	(reverse (cons (car l)
		       (cdr (reverse (cdr l)))))))

;; Exercise 6.37
(defun rotateRight (l)
  (cons (car (reverse l)) (reverse (cdr (reverse l)))))
(defun rotateLeft (l)
  (reverse (cons (car l) (reverse (cdr l)))))

;; Exercise 6.38
;; Any sets that are equivalent will yield symmetric results, and any sets which are not
;; equivalent will not be symmetric. This seems extremely obvious.

;; Exercise 6.39
;; Append.

;; Exercise 6.40
;; This seems silly, but (checked answer, it's identical):
;; '((a b c d)
;;   (b c d)
;;   (c d)
;;   (d))

;; Exercise 6.41
(defvar rooms
  '((living-room        (north front-stairs)
                        (south dining-room)
                        (east kitchen))
    
    (upstairs-bedroom   (west library)
                        (south front-stairs))
    
    (dining-room        (north living-room)
                        (east pantry)
                        (west downstairs-bedroom))
    
    (kitchen            (west living-room)
                        (south pantry))
    
    (pantry             (north kitchen)
                        (west dining-room))

    (downstairs-bedroom (north back-stairs)
                        (east dining-room))

    (back-stairs        (south downstairs-bedroom)
                        (north library))
    
    (front-stairs       (north upstairs-bedroom)
                        (south living-room))

    (library (east upstairs-bedroom)
     (south back-stairs))))
;; a.
(defun choices (room)
  "Show available movement choices given a room."
  (cdr (assoc room rooms)))
;; b.
(defun look (direction room)
  "Provide the room given a direction from a room."
  (car (cdr (assoc direction (choices room)))))
;; c.
(defvar loc 'pantry)
(defun setRobbieLocation (place)
  "Moves Robbie to PLACE by setting the variable LOC."
  (setf loc place))
;; d.
(defun howManyChoices ()
  "Provides the number of choices from current room."
  (length (choices loc)))
;; e.
(defun upstairsP (room)
  "Returns T if the room is either the library or upstairs-bedroom."
  (cond ((or (equal 'library room) (equal 'upstairs-bedroom room)) 't)
	(t nil)))
(defun onStairsP (room)
  "Returns T if the room is on the stairs."
  (cond ((or (equal 'front-stairs room) (equal 'back-stairs room)) t)
	(t nil)))
;; f.
;; flatten makes a return. Something tells me I should be able to these assignments without
;; it. Just checked book answer on craps function from earlier. Yup. Append is the answer.
(defun where ()
  "Gives a full description of where Robbie is."
  (flatten (let ((result
		 (cond ((upstairsP loc) '(upstairs in the))
		       ((onStairsP loc) '(on the))
		       (t '(downstairs in the)))))
	     (list 'Robbie 'is result loc))))
;; g.
(defun move (direction)
  (cond ((not (look direction loc)) '(Ouch! Robbie hit the wall and died!))
	((setf loc (look direction loc)) (where))))
;; h.
;; Movies: West (dining-room), West (downstairs-bedroom), North (back-stairs), North (library),
;; East (upstairs-bedroom), South (front-stairs), South (living-room), East (kitchen).
