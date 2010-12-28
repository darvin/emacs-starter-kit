(setq auto-mode-alist
      (append '(
                ("\\.md" . markdown-mode)
                ("\\.markdown" . markdown-mode)
                ("\\.text" . markdown-mode)
                ("\\.mdt" . markdown-mode)
                )
              auto-mode-alist)
      )(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)


(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                               auto-mode-alist))