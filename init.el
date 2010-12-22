;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

(add-to-list 'load-path (expand-file-name
                        "org" dotfiles-dir))
;; Load up Org Mode and Babel
(require 'org-install)
(require 'ob)
(require 'ob-emacs-lisp)
(require 'ob-tangle)
;; load up the main file
(org-babel-load-file (expand-file-name "starter-kit.org" dotfiles-dir))

;;; init.el ends here
