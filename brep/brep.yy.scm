(require-extension lalr-driver)
(define brep-parser
  (lr-driver
    '#(((*default* *error*)
        (error 6)
        (ID 5)
        (NUM 4)
        (LPAREN 3)
        (NEWLINE 2)
        (- 1))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* -4))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* -14))
       ((*default* -12) (= 14) (LPAREN 13))
       ((*default* *error*) (NEWLINE 15))
       ((*default* *error*) (NEWLINE 20) (+ 19) (- 18) (* 17) (/ 16))
       ((*default* *error*) (NEWLINE 21))
       ((*default* *error*) (*eoi* 22))
       ((*default* -12) (LPAREN 13))
       ((*default* -11) (/ 16) (* 17))
       ((*default* *error*) (RPAREN 23) (+ 19) (- 18) (* 17) (/ 16))
       ((*default* -16) (ID 10) (NUM 4) (LPAREN 3) (STRING 24) (- 1))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* -5))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (- 1))
       ((*default* -3))
       ((*default* -2))
       ((*default* -1) (*eoi* accept))
       ((*default* -15))
       ((*default* -21) (COMMA 32))
       ((*default* *error*) (RPAREN 34))
       ((*default* -21) (COMMA 32) (+ 19) (- 18) (* 17) (/ 16))
       ((*default* -6) (+ 19) (- 18) (* 17) (/ 16))
       ((*default* -10))
       ((*default* -9))
       ((*default* -8) (/ 16) (* 17))
       ((*default* -7) (/ 16) (* 17))
       ((*default* *error*) (ID 10) (NUM 4) (LPAREN 3) (STRING 36) (- 1))
       ((*default* -18))
       ((*default* -13))
       ((*default* -17))
       ((*default* -21) (COMMA 32))
       ((*default* -21) (COMMA 32) (+ 19) (- 18) (* 17) (/ 16))
       ((*default* -20))
       ((*default* -19)))
    (vector
      '((3 . 7) (2 . 8) (1 . 9))
      '((3 . 11))
      '()
      '((3 . 12))
      '()
      '()
      '()
      '()
      '()
      '()
      '()
      '()
      '()
      '((4 . 25) (3 . 26))
      '((3 . 27))
      '()
      '((3 . 28))
      '((3 . 29))
      '((3 . 30))
      '((3 . 31))
      '()
      '()
      '()
      '()
      '((5 . 33))
      '()
      '((5 . 35))
      '()
      '()
      '()
      '()
      '()
      '((3 . 37))
      '()
      '()
      '()
      '((5 . 38))
      '((5 . 39))
      '()
      '())
    (vector
      '()
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($2 (vector-ref ___stack (- ___sp 1)))
               ($1 (vector-ref ___stack (- ___sp 3))))
          $1))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($2 (vector-ref ___stack (- ___sp 1)))
               ($1 (vector-ref ___stack (- ___sp 3))))
          (___push 2 1 $1)))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($2 (vector-ref ___stack (- ___sp 1)))
               ($1 (vector-ref ___stack (- ___sp 3))))
          (___push 2 1 $1)))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* () (___push 1 1 #f)))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* () (___push 2 1 #f)))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 2 (add-binding $1 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 3 (+ $1 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 3 (- $1 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 3 (* $1 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 3 (/ $1 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($2 (vector-ref ___stack (- ___sp 1)))
               ($1 (vector-ref ___stack (- ___sp 3))))
          (___push 2 3 (- $2))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($1 (vector-ref ___stack (- ___sp 1))))
          (___push 1 3 (get-binding $1))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($4 (vector-ref ___stack (- ___sp 1)))
               ($3 (vector-ref ___stack (- ___sp 3)))
               ($2 (vector-ref ___stack (- ___sp 5)))
               ($1 (vector-ref ___stack (- ___sp 7))))
          (___push 4 3 (invoke-func $1 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($1 (vector-ref ___stack (- ___sp 1)))) (___push 1 3 $1)))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 3 $2)))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* () (___push 0 4 '())))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($2 (vector-ref ___stack (- ___sp 1)))
               ($1 (vector-ref ___stack (- ___sp 3))))
          (___push 2 4 (cons $1 $2))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($2 (vector-ref ___stack (- ___sp 1)))
               ($1 (vector-ref ___stack (- ___sp 3))))
          (___push 2 4 (cons $1 $2))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 5 (cons $2 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* (($3 (vector-ref ___stack (- ___sp 1)))
               ($2 (vector-ref ___stack (- ___sp 3)))
               ($1 (vector-ref ___stack (- ___sp 5))))
          (___push 3 5 (cons $2 $3))))
      (lambda (___stack ___sp ___goto-table ___push yypushback)
        (let* () (___push 0 5 '()))))))
