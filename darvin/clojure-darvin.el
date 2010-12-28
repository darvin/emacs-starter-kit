(setq class-path (concat "-cp " 
                         "./extLibs/*:"
                         "../extLibs/*:"
                         "./classes/:"
                         "."))
(setq clojure-command (concat "java -server -Dfile.encoding=UTF-8 "  
                              class-path " clojure.lang.Repl" ))
;(setq inferior-lisp-program clojure-command)
