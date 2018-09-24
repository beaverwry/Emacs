;;设置光标样式的方法
(setq-default cursor-type 'bar)
;; Chinese text display setting
(set-fontset-font "fontset-default"'gb18030' ("Microsoft YaHei" . "unicode-bmp")) 
;; Mute warning sound
(setq ring-bell-function 'ignore)
;;自动括号匹配（Highlight Matching Parenthesis）
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;高亮当前行，当文本内容很多时可以很容易找到光标的位置。
(global-hl-line-mode 1)
;;安装主题
(add-to-list 'my/packages 'monokai-theme)
;;加载主题
(load-theme 'monokai 1)
; 开启全局 Company 补全
(global-company-mode 1)
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;;添加 Org-mode 文本内语法高亮
(require 'org)
(setq org-src-fontify-natively t)
;;设置一个别名将其简化为只输入 (y or n)
(fset 'yes-or-no-p 'y-or-n-p)
;;close initial start page
(setq inhibit-splash-screen t)

;; 文件末尾
(provide 'init-ui)
