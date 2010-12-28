(add-to-list 'load-path (concat dotfiles-dir "/el-get/el-get"))

(require 'el-get)

(setq el-get-sources
      '(el-get
        package
        (:name paredit :features "paredit")
        google-maps
        yasnippet
        gist
        auto-complete
        org-mode
        yaml-mode
        python-mode
        color-theme
                                        ;       color-theme-twilight
                                        ;      color-theme-tango

        vkill
        auto-complete-extension
        doxymacs
        pymacs
        slime
        rainbow-mode
        clojure-mode
        emms
        markdown-mode
        (:name hexrgb   :type emacswiki)
        (:name fullscreen       :type emacswiki :features "fullscreen" :load "fullscreen.el"
         :after (lambda () (global-set-key [f11] 'fullscreen-toggle)))

        (:name palette       :type emacswiki :load "palette.el")

        (:name sudo-save :type emacswiki :features "sudo-save" :load "sudo-save.el")
        (:name eldoc-extension :type emacswiki :features "eldoc-extension")
        (:name cat-safe :type git :features "cat-safe"
         :url "http://git.nullprogram.com/cat-safe.git"
         :load "cat-safe.el")
        (:name icicles   :type git
         :url "https://github.com/emacsmirror/icicles.git"
         :features "icicles")

        (:name pycomplexity   :type git
         :url "https://github.com/garybernhardt/pycomplexity.git"
         :features ("pycomplexity" "linum"))
        (:name ipython   :type http
         :url "http://ipython.scipy.org/dist/ipython.el"
         :features "ipython")


        (:name frame-fns      :type emacswiki)
        (:name frame-cmds      :type emacswiki)
        (:name zoom-frm :type emacswiki :load "zoom-frm.el"
         :after (lambda () (global-set-key (if (boundp 'mouse-wheel-down-event) ; Emacs 22+
                                           (vector (list 'control mouse-wheel-down-event))
                                           [C-mouse-wheel])    ; Emacs 20, 21
                                       'zoom-in)
                       (when (boundp 'mouse-wheel-up-event) ; Emacs 22+
                         (global-set-key (vector (list 'control mouse-wheel-up-event))
                                         'zoom-out))))
        ;(:name       :type emacswiki)
        ;(:name       :type emacswiki)
        ;(:name       :type emacswiki)
        ;(:name       :type emacswiki)
        

        (:name zenburn
         :type emacswiki
         :load "zenburn.el"
         :after (lambda () (color-theme-zenburn)))

        (:name idle-highlight        :type elpa)
        (:name inf-ruby        :type elpa)
        (:name js2-mode        :type elpa)
        (:name ruby-mode        :type elpa)
        
        
        
        (:name auctex
         :type cvs
         :module "auctex"
         :url ":pserver:anonymous@cvs.sv.gnu.org:/sources/auctex"
         :build ("./autogen.sh | true" "./configure --disable-preview" "make")
         :load  ("tex-site.el")
         :info "doc")

        (:name magit
         :after (lambda () (global-set-key (kbd "C-x C-z") 'magit-status)))

        (:name git-commit
         :type git
         :url "https://github.com/rafl/git-commit-mode.git"
         :features "git-commit")
        (:name doc-mode
         :type git
         :url "git://github.com/darvin/doc-mode.git"
         :features "doc-mode")

        (:name highlight-parentheses
         :type git
         :url "git://github.com/nschum/highlight-parentheses.el.git"
         :features highlight-parentheses)

        emacschrome


        ))
(el-get 'sync)
(el-get 'wait)

(provide 'el-get-init)