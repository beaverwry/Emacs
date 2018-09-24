(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

;;=======================================================================
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; Package Management
(require 'init-packages)
(require 'init-ui)
;;org-mode initialize
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;;=======================================================================
(package-initialize)

;;禁止 Emacs 自动生成备份文件
(setq make-backup-files nil)

;;默认的模式 替换成 js2-mode 
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/org"))

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-startup-indented t)
;;=======================================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (org company smooth-scrolling hungry-delete swiper counsel smartparens popwin js2-mode markdown-mode monokai-theme solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq initial-scratch-message nil)


