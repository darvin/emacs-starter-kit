(add-to-list 'load-path (concat dotfiles-dir "/el-get/el-get"))

(require 'el-get)

(setq el-get-sources
      '(el-get
        package
        paredit
        google-maps
        yasnippet
        gist
        auto-complete
        org-mode
        yaml-mode
        python-mode
        color-theme
        ido-hacks
        vkill
        auto-complete-extension
        doxymacs
        pymacs
        slime
        rainbow-mode
        clojure-mode
        emms
        markdown-mode
        hexrgb
        fullscreen
        palette
        sudo-save
        eldoc-extension
        cat-safe
        pycomplexity
        ipython
        frame-fns
        frame-cmds
        zoom-frm                             
        zenburn
        idle-highlight
        inf-ruby
        js2-mode
        ruby-mode
        git-commit
        docstring-mode
        highlight-parentheses
        emacschrome
        smex
                
        
        
        (:name auctex
         :type cvs
         :module "auctex"
         :url ":pserver:anonymous@cvs.sv.gnu.org:/sources/auctex"
         :build ("./autogen.sh | true" "./configure --disable-preview" "make")
         :load  ("tex-site.el")
         :info "doc")

        (:name magit
         :after (lambda () (global-set-key (kbd "C-x C-z") 'magit-status)))




        ))
(el-get 'sync)
(el-get 'wait)

(provide 'el-get-init)
