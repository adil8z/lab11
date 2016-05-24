
(define aCompletelyUselessFunctionCreatedOnlyToMakeYourLifeMiserable
  (lambda (m n)
    (IFTHENELSE (OR (iszero m) (LT m n)) (SUM n z) (ADD m n))
  )
)


(define z 0)

; if then else 
(define IFTHENELSE 
	(lambda (p a b)
		(p a b)
	)
)


(define SUM
  (lambda (n a)
    (define (loop n a z)
      (if (zero? n)
        a
        (loop (pred 1 n) (ADD a z) (succ z 1))
      )
    )
    (loop n a z)
  )
)

; less than
(define LT
  (lambda (a b)
    ( AND (iszero (SUB a b)) (NOT ( iszero (SUB b a) )) )
  )
)

; or
(define OR
  (lambda (M N)
    (N true (M true false))
  )
)

; and function
(define AND
  (lambda (M N)
    (N (M true false) false)
  )
)

; not function
(define NOT
  (lambda (M)
    (M false true)
  )
)

; add function
(define ADD
  (lambda (a b)
    (succ a (succ b z))
  )
)

; subtract function
(define SUB
  (lambda (a b)
    (pred (succ b z) (succ a z) )
  )
)

; true function
(define true
  (lambda (a b)
    a
  )
)

; false function
(define false
  (lambda (a b)
    b
  )
)

; impure lambda function definitons to test the following
; iszero function
(define iszero
  (lambda (a)
    (if(= a z)
    	true
    	false
    )
  )
)

; successor function
(define succ
  (lambda (a b)
    (+ a b)
  )
)

; predecessor function
(define pred
  (lambda (a b)
    (if (< (- b a) z)
       z
      (- b a)
    )
  )
)
