(define (sum ls) ;sums the elements in a list
    (if (null? ls) 0
        (+ (car ls) (sum (cdr ls)))))

(define (square x) ;function used to calculate a squared x number
  (* x x))

(define (sum-square ls) ;sums the square of the
  (apply +              ;elements of a list
         (map square ls)))

(define (average ls)       ;calculates the average of a list
  (/ (sum ls) (length ls)))

(define (average-square ls)       ;calculates the average of the
  (/ (sum-square ls) (length ls)));squares of a list

(define (difference ls);calculates the difference between the average 
                       ;of squares and the avrage of a list
  (- (average-square ls) (square (average ls))))

(define (sigma . args) ;calculates the sigma of the given arguments
  (sqrt (difference args)))