;; ~/.emacs.d/init.el

;; MELPA
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; custom theme path
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa")
;; https://github.com/greduan/emacs-theme-gruvbox
(if (display-graphic-p)
    (load-theme 'plan9 t)
  (load-theme 'gruvbox-dark-hard t))

;; default font
(add-to-list 'default-frame-alist
	     '(font . "Monospace-12"))
(set-face-attribute 'default t :font "Fira Code-12")

;; disable scrollbar
(toggle-scroll-bar -1)

;; disable toolbar
(tool-bar-mode -1)

;; diable menu
(menu-bar-mode -1)

;; disable bell
(setq ring-bell-function 'ignore)

;; display column number
(column-number-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "3770d0ae70172461ee0a02edcff71b7d480dc54066e8960d8de9367d12171efb" default)))
 '(package-selected-packages
   (quote
    (php-mode alect-themes ess lua-mode plan9-theme gruvbox-theme)))
 '(safe-local-variable-values
   (quote
    ((eval when
	   (fboundp
	    (quote rainbow-mode))
	   (rainbow-mode 1))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
