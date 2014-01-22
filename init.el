(setq load-path (cons "~/.emacs.d/lisp" load-path))

;; 设置color-themes
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'color-theme)
(color-theme-initialize)
(color-theme-matrix)
(color-theme-sitaramv-nt)

;; 在mac下显示中文字体
(set-fontset-font
(frame-parameter nil 'font)
'han
(font-spec :family "Hiragino Sans GB" ))

;; 设置php-html-mode
(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)
;;加载php-mode
(require 'php-mode)
;;根据文件扩展名自动php-mode
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
