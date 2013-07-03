;;mylisp.el
(set-default-font "WenQuanYi Micro Hei Mono-10")
(funcall
 (lambda ()
   (interactive)
   (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                          '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
   (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                          '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))))

(global-hl-line-mode 1)

(color-theme-molokai)
;;eim
(autoload 'eim-use-package "eim" "Another emacs input method")
(setq eim-use-tooltip nil)
(register-input-method "eim-py" "euc-cn" 'eim-use-package "拼音" "汉字拼音输入法" "py.txt")
(setq default-input-method "eim-py")
(setq-default visible-bell nil)

(provide 'mylisp)
