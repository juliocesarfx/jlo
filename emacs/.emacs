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
