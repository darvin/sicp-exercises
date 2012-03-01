(define (f n)
  (cond ((< n 3) n)
        (else (+ 
               (f (- n 1))
               (* 2 (f (- n 2)))
               (* 3 (f (- n 3)))))))

(define (f2 n) 
  (define (f-iter f-1 f-2 f-3 count)
     (if (< count 3) f-1
         (f-iter (+ f-1 (* 2 f-2) (* 3 f-3)) f-1 f-2 (- count 1))))
  (f-iter 2 1 0 n))
