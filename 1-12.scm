(define (digit col row) 
  (cond
    ((and (= col 0) (= row 0)) 1)
    ((< col 0) 0)
    ((> col row) 0)
    (else (+ (digit col (- row 1))
             (digit (- col 1) (- row 1))))))



(define (print-pascal-triangle rows-number)
  (define (print-digit row col) (begin
                                  (display (digit col row))
                                  (display " ")
                                  (cond ((< col row)
                                         (print-digit row (+ 1 col))))))
  (define (print-row row) 
    (cond ((< row rows-number)
           (begin
             (print-digit row 0)
             (display "\n")
             (print-row (+ 1 row))))))
  (print-row 0)
  )

(print-pascal-triangle 100)