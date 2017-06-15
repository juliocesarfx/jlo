(custom-set-variables
 '(logview-additional-level-mappings
   (quote
    (("px"
      (error "error")
      (warning "warn" "warning")
      (information "info")
      (debug "debug")
      (trace)
      (aliases)))))
 '(logview-additional-submodes
   (quote
    (("jb"
      (format . "TIMESTAMP LEVEL  [NAME] (THREAD)")
      (levels . "SLF4J")
      (timestamp)
      (aliases))
     ("px"
      (format . "TIMESTAMP [LEVEL]")
      (levels . "px")
      (aliases)))))
 '(logview-additional-timestamp-formats
   (quote
    (("jb"
      (java-pattern . "yyyy-MM-dd HH:mm:ss,SSS")
      (locale)
      (regexp . "")
      (aliases))
     ("px"
      (locale)
      (regexp . "\\d{2}:\\d{2}:\\d{2}\\.\\d{3}")
      (aliases)))))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 )

(custom-set-faces
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))
 )


;; No bars
(global-linum-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(auto-save-mode -1)
(scroll-bar-mode -1)
 
;; No backups
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Java jdee
(setq jdee-server-dir "c:/usr/jdee")

;; Proxy
(setq url-proxy-services '(("http" . "host:port")))

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Autocomplete
;;(ac-config-default)

;; Multiplecursor
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)		

;; Glass
(set-frame-parameter (selected-frame) 'alpha '(85 85))
(add-to-list 'default-frame-alist '(alpha 85 85))

;; Frame width/height
(setq initial-frame-alist '((width . 156)(height . 36)))
(setq default-frame-alist '((width . 156)(height . 36)))

;; Org mode log done time
(setq org-log-done 'time)
