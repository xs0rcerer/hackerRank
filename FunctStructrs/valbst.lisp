;;;; valbst - hackerRank: Valid BST
;;;; George Lukas < last update Jan/18/2016 - 10:06PM >

(defun is-bst (lis)
  (form-bst lis 0 ()))

(defun form-bst (lst min max-lst)
  (cond
    ((null lst) "YES")
    ((< (first lst) min) "NO")
    ((null max-lst) (form-bst (rest lst) min (list (first lst))))
    ((> (first lst) (first max-lst)) (form-bst lst (first max-lst) (rest max-lst)))
    (t (form-bst (rest lst) min (cons (first lst) max-lst)))))

(defun solver ()
  (loop :repeat (read) :do
     (let ((lst ()))
       (loop :repeat (read) :do (setq lst (cons (read) lst)))
       (format t "~a~%" (is-bst (reverse lst))))))

(solver)
