(+ 1 2)
(+ 3 (+ 1 2))
(setq my-name "Bastien")
(insert "Hello!")
(insert "Hello" " world!")
(insert "Hello" " world!" ":test")
(insert "Hello, I am " my-name)
;; (defun hello ()
;;   (insert "Hello, I am " my-name))

(defun hello (name) (insert "Hello " name))
(hello "geekplux")

(switch-to-buffer-other-window "*test*")
(progn
  (switch-to-buffer-other-window "*test*")
  (hello "you"))

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "there"))

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "you")
  (other-window 1))

(let ((local-name "you"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

(format "Hello %s!\n" "visitor")

(defun hello (name)
  (insert (format "Hello %s!\n" name)))


(defun greeting (name)
  (let ((your-name "Bastien"))
    (insert (format "Hello %s!\n\nI am %s."
                    name       ; the argument of the function
                    your-name  ; the let-bound variable "Bastien"
                    ))))

(greeting "geekplux")

(read-from-minibuffer "Enter your name: ")

(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (insert (format "Hello!\n\nI am %s and you are %s."
                    from-name ; the argument of the function
                    your-name ; the let-bound var, entered at prompt
                    ))))

(greeting "bee")

(setq list-of-names '("Sarah" "Chloe" "Mathilde"))
(car list-of-names)
(cdr list-of-names)
(push "Stephanie" list-of-names)

(mapcar 'hello list-of-names)

(defun greeting ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (other-window 1))
(greeting)

(defun replace-hello-by-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "Hello")
    (replace-match "Bonjour"))
  (other-window 1))
(replace-hello-by-bonjour)

(defun hello-to-bonjour ()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  ;; Say hello to names in `list-of-names'
  (mapcar 'hello list-of-names)
  (goto-char (point-min))
  ;; Replace "Hello" by "Bonjour"
  (while (search-forward "Hello" nil 't)
    (replace-match "Bonjour"))
  (other-window 1))

(hello-to-bonjour)

(defun boldify-names ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-forward "Bonjour \\(.+\\)!" nil 't)
    (add-text-properties (match-beginning 1)
                         (match-end 1)
                         (list 'face 'bold)))
  (other-window 1))

(boldify-names)
