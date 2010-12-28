;(display-time) 
(require 'emms) 
(require 'emms-setup) 
(emms-default-players) 
(emms-standard) 
;(emms-all)

;(require 'emms-player-mpd)
;(setq emms-player-mpd-server-name "localhost")
;(setq emms-player-mpd-server-port "6600")


;(add-to-list 'emms-info-functions 'emms-info-mpd)
                                        ;(add-to-list 'emms-player-list 'emms-player-mpd)

;;; Add music file to playlist on '!', --lgfang
;(add-to-list 'dired-guess-shell-alist-user
;(list "\\.\\(flac\\|mp3\\|ogg\\|wav\\)\\'"
;'(if (y-or-n-p "Add to emms playlist?")
;(progn (emms-add-file (dired-get-filename))
;       (keyboard-quit))
;"mplayer")))