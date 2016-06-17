(define (sum-of-max x y z)
  (cond ((and (< x y) (< x z)) (+ y z))
        ((and (< y x) (< y z)) (+ x z))
        (else (+ x y))))

(sum-of-max 2 4 6)
(sum-of-max 30 40 50)
