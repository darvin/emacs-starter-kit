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


(require 'icicles)

(icy-mode 1)





;;
;; M-x customize
;; 
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.

 '(highlight ((t (:background "#333"))))
 '(icicle-Completions-instruction-1 ((((background dark)) (:foreground "seagreen2"))))
 '(icicle-Completions-instruction-2 ((t (:foreground "darkseagreen1"))))
 '(icicle-common-match-highlight-Completions ((t (:foreground "OliveDrab3"))))
 '(icicle-complete-input ((((background dark)) (:foreground "OliveDrab1"))))
 '(icicle-match-highlight-Completions ((t (:foreground "OliveDrab1"))))
 '(icicle-prompt-suffix ((((type x w32 mac graphic) (class color) (background dark)) (:foreground "goldenrod2"))))
 '(icicle-special-candidate ((((background dark)) (:inherit default :underline "goldenrod1"))))

 '(italic ((((supports :slant italic)) (:slant italic :width expanded))))
 '(match ((t (:underline "red"))))
 '(flymake-errline  ((((class color)) (:underline "OrangeRed"))))
 '(flymake-warnline ((((class color)) (:underline "Yellow"))))
 )






