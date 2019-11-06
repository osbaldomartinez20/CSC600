(define (line n)
    (if (> n 0) ;do the action if n is at least 0
        (begin
        (display "*") ;print to console a *
          (line (- n 1))))) ;recursive call of with parameter n - 1

(define (histogram ls)
  (if (> (length ls) 0);continue if length of list is at least one
    (begin
    (line (car ls));call line with the first element as the parameter
    (newline) ;print a new line
    (histogram (cdr ls)))));recursive call with list minus 1st element