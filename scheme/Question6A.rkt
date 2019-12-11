;Display vector v that will be given when file is being read
(define (display-vector v)
  (do ((i 0 (+ i 1)))
    ((>= i (vector-length v))(display ""))
    (display (vector-ref v i)) (display " ")))

;read and store the matrices
(define (read-matrix filename)
  (let* ((inport (open-input-file filename))
         (nrow (read inport))
         (ncol (read inport))
         (mat (make-vector nrow)))
    (do ((i 0 (+ i 1)))
      ((>= i nrow) (close-input-port inport) mat)
      (let ((row (make-vector ncol)))
        (do ((j 0 (+ j 1)))
            ((>= j ncol) (vector-set! mat i row))
            (vector-set! row j (read inport)))))))
;return row at i of matrix
(define (ro filename i)
  (define mat (read-matrix filename))
  (vector-ref mat i))

;display row at i of the matrix
(define (row filename i)
  (display-vector (ro filename i)))

;return col at j of matrix
(define (co filename j)
  (define column (make-vector (vector-length (read-matrix filename))))
  (do ((i 0 (+ i 1)))
    ((>= i (vector-length (read-matrix filename))) column)
    (vector-set! column i (vector-ref (vector-ref (read-matrix filename) i) j))))

;display col at j of the matrix
(define (col filename j)
  (display-vector (co filename j)))