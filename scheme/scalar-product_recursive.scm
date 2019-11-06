;multiplies the elements of two vectors at position n
(define (mult v1 v2 n)
  (* (vector-ref v1 n) (vector-ref v2 n)))

;sums the multiplication of corresponding vector position elements.
;So that sum = (v1[0]*v2[0]) + ... + (v1[n-1]*v2[n-1]) 
(define (sum v1 v2 n)
  (if (< n (vector-length v1))
      (+ (mult v1 v2 n);gets the multiplication of the elemnts
         (sum v1 v2 (+ n 1)));recursively calls the function with n+1
      (if (= n (vector-length v1));checks if n is equal to vector length
          0)))

(define (scalar-product v1 v2)
  (if (= (vector-length v1) (vector-length v2));vectors must be same length
        (sum v1 v2 0);call the sum with the vectors and n = 0
      (if (not(eq? (vector-length v1) (vector-length v2)))
       (display "ERROR: Different sizes of vectors!"))))