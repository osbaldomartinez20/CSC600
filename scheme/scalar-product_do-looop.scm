(define (scalar-product v1 v2)
  (define v3 0) ;initializes a variable to 0
  (if (= (vector-length v1) (vector-length v2));makes sure the two vactors have same size
  (do ((i 0 (+ i 1)))
    ((> i (- (vector-length v1) 1))) ;loop while i < vector_size -1
    (set! v3 (+ v3 (* (vector-ref v1 i) (vector-ref v2 i)))) ;set v3 to v3 + (v1[i] * v2[i])
     )
      (if (not(eq? (vector-length v1) (vector-length v2))) ;display an error if sizes are different
       (display "ERROR: Different sizes of vectors!")))
  (if (= (vector-length v1) (vector-length v2)) (display v3))) ;display the value of v3 only if sizes are equal