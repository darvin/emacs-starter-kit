(define-key key-translation-map "^" "\C-x")
(define-key key-translation-map "\M-^" "\C-c")

;(define-key key-translation-map "[" "(")
;(define-key key-translation-map "]" ")")
;(define-key key-translation-map "{" "[")
;(define-key key-translation-map "}" "]")
;(define-key key-translation-map "(" "{")
;(define-key key-translation-map ")" "}")

;(define-key key-translation-map "\"" "'")
;(define-key key-translation-map "'" "\"")

;(define-key slime-mode-map (kbd "[") 'insert-parentheses)
;(define-key slime-mode-map (kbd "]") 'move-past-close-and-reindent)
;(define-key slime-mode-map (kbd "(") (lambda () (interactive) (insert "[")))
;(define-key slime-mode-map (kbd ")") (lambda () (interactive) (insert
                                        ;"]")))

(if (fboundp 'pc-selection-mode)
    (pc-selection-mode)
    (require 'pc-select))



(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)