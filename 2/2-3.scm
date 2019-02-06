(define (start-segment line) (car line))
(define (end-segment line) (cdr line))
(define (make-segment start end)
  (cons start end))
(define (make-point x y)
  (cons x y))
(define (x-point point)
  (car point))
(define (y-point point)
  (cdr point))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
(define (average x y) (/ (+ x y) 2))
(define (midpoint-segment line)
  (define start-point (start-segment line))
  (define end-point (end-segment line))
  (make-point
   (average (x-point start-point) (x-point end-point))
   (average (y-point start-point) (y-point end-point))))
(define horizonal-line (make-segment (make-point 0 0) (make-point 2 0)))
(define vertical-line (make-segment (make-point 0 0) (make-point 0 3)))
(define (get-vertical square)
  (car square))
(define (get-horizonal square)
  (cdr square))
(define (get-length-vertical line)
  (- (y-point (end-segment line)) (y-point (start-segment line))))
(define (get-length-horizonal line)
  (- (x-point (end-segment line)) (x-point (start-segment line))))
(define (make-square left-vertical down-horizonal)
  (cons left-vertical down-horizonal))
(define square (make-square vertical-line horizonal-line))
(define (square-perimeter square)
  (+ (get-length-vertical (get-vertical square)) (get-length-horizonal (get-horizonal square))))
(define (square-area square)
  (* (get-length-vertical (get-vertical square)) (get-length-horizonal (get-horizonal square))))
(display (square-perimeter square))
(newline)
(display (square-area square))
;5
;6
