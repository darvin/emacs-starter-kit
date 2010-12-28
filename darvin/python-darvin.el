;; pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(eval-after-load "pymacs"
  '(add-to-list 'pymacs-load-path (expand-file-name
                        "site-python" dotfiles-dir)))
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
(setq ropemacs-guess-project t)





(require 'linum)
(require 'pycomplexity)
(require 'doc-mode)
(add-hook 'python-mode-hook
           (function (lambda ()
                       (flymake-mode)
                       (turn-on-eldoc-mode) 
                       (set (make-local-variable 'eldoc-documentation-function) 
                            #'rope-eldoc-function) 
                       (linum-mode)
                       (pycomplexity-mode)
                       (doc-mode))))

(when (load "flymake" t)
      (defun flymake-pylint-init ()
        (let* ((temp-file (flymake-init-create-temp-buffer-copy
                           'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
          (list "epylint" (list local-file))))
    
      (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))


(add-hook 'find-file-hook 'flymake-find-file-hook)
(python-use-ipython "/usr/bin/ipython" '("-colors" "Linux" "-nobanner"))


;(require 'ipython)
;(setq py-python-command '("/usr/bin/ipython"))
;(setq py-python-command-args '("-pylab" "-colors" "LightBG"))




