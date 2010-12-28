(setq inferior-lisp-program "sbcl")
(require 'slime-autoloads)
(slime-setup '(slime-fancy))
(setq lisp-indent-function 'common-lisp-indent-function)
(setq common-lisp-hyperspec-root "/home/darvin/opt/HyperSpec/")
(dolist (hook '(lisp-mode-hook
                lisp-interaction-mode-hook
                emacs-lisp-mode-hook
                clojure-mode-hook))
  (add-hook hook (lambda ()
                   (highlight-parentheses-mode +1))))

