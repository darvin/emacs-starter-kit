;;=============================================================================
;;
;;Настройка проверки правописания Ispell
;;
(require 'flyspell)
(require 'ispell)

(setq
; i like aspel, and you?
 ispell-program-name "aspell"

 ispell-really-aspell t

 ispell-russian-dictionary "ru"
 ispell-english-dictionary "en"
 flyspell-default-dictionary ispell-english-dictionary
 ispell-dictionary ispell-english-dictionary
 ispell-local-dictionary ispell-russian-dictionary
 ispell-extra-args '("--sug-mode=ultra"))

(defun flyspell-russian ()
(interactive)
(flyspell-mode t)
(ispell-change-dictionary ispell-russian-dictionary)
(flyspell-buffer)
(message "Russian dictionary - Spell Checking completed."))

; English
(defun flyspell-english ()
(interactive)
(flyspell-mode t)
(ispell-change-dictionary ispell-english-dictionary)
(flyspell-buffer)
(message "English dictionary - Spell Checking completed."))

;(setq ispell-highlight-face (quote flyspell-incorrect))
(setq ispell-have-new-look t)
(setq ispell-enable-tex-parser t)

(setq flyspell-delay 1)
(setq flyspell-always-use-popup t)

;(global-set-key [f1] 'ispell-word)
;(global-set-key [f7] 'ispell-buffer); проверить орфографию в текущем буфере
;(global-set-key [f8] 'ispell-region)
;(global-set-key [f9] 'auto-fill-mode); вкл/выкл автозаполнения
(global-set-key [M-f12] 'flyspell-english)
(global-set-key [f12] 'flyspell-russian)
(global-set-key [S-f12] 'flyspell-mode); вкл/выкл проверки орфографии "на ходу"
;;
;;============================================================================

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (turn-on-flyspell))))
(dolist (hook '(python-mode-hook
                lisp-mode-hook
                lisp-interaction-mode-hook))
  (add-hook hook (lambda ()
                   (turn-off-flyspell)
                   (flyspell-prog-mode))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (turn-off-flyspell))))
