;; 求三个数中较大两个数的和
(define (sum-of-max x y z)
  (cond ((and (< x y) (< x z)) (+ y z))
        ((and (< y x) (< y z)) (+ x z))
        (else (+ x y))))

(sum-of-max 3 4 5)

(define (sum-of-max x y z)
  (define (bigger m n)
    (if (> m n) m n))
  (define (smaller m n)
    (if (< m n) m n))
  (+ (bigger x y)
     (bigger (smaller x y) z)))

(sum-of-max 30 40 50)
