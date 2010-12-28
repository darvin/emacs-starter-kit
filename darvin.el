(defmacro safe-wrap (fn &rest clean-up)
  `(unwind-protect
       (let (retval)
         (condition-case ex
             (setq retval (progn ,fn))
           ('error
            (message (format "Caught exception: [%s]" ex))
            (setq retval (cons 'exception (list ex)))))
         retval)
     ,@clean-up))

;(if (eq window-system 'x)
 ; (set-face-attribute 'default nil :font "Consolas-15"))  

;(safe-wrap 
 ; (set-face-attribute 'default nil :font "Consolas-15"))  

(scroll-bar-mode -1)

(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour




;(add-hook 'after-init-hook '(lambda () (w32-send-sys-command ?\xf030)))
(add-to-list 'default-frame-alist '(width . 106))
(add-to-list 'default-frame-alist '(height . 31))




(global-hl-line-mode 1)



;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time    
(setq mouse-wheel-progressive-speed nil) ;don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

;; browser default
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")


