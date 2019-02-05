(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))
(define (accumulate-2 combiner null-value term a next b)
    (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))
(define (sum term a next b)
  (accumulate-2 + 0 term a next b))
(define (self x) x)
(define (add x) (+ x 1))
(define (product term a next b)
  (accumulate * 1 term a next b))
(display (sum self 0 add 10))
(newline)
(display (product self 1 add 3))