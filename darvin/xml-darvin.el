
;;; Fix broken flymake xml init
(defun flymake-xml-init ()
  (list "xmllint" (list "--valid" (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))))
