;;; utilize gnus mime type functions in dired

(add-hook 'dired-load-hook
          (function (lambda ()
            (load "dired-x"))))

(define-key dired-mode-map "o" 'dired-open-custom)
(defun dired-open-custom ()
       (interactive)
       (let ((file-name (dired-get-file-for-visit)))
         (if (file-exists-p file-name)
             (call-process "~/opt/bin/xdg-open" nil 0 nil file-name))))