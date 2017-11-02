;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(menu-bar-mode -1)
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized") 
;;(add-to-list 'load-path "~/.emacs.d/color-theme-sanityinc-solarized")
;;(require 'color-theme-sanityinc-solarized)
;;(load-theme 'solarized t)

(add-to-list 'load-path "~/.emacs.d/scripts/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(load-theme 'solarized-dark1 t)

(require 'package)
(add-to-list 'package-archives
                         '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6aa5a8f88c48cea62f2ae313cc8672c9a9e451b32d899dd41f15cdc319b7b7d2" "affa09a67482a82fe185265c6252e0d42998dd35350d2d69628a68d47e0ff137" "9cb8f5a720886c6b39c29cd7e013fd3b43f752c8333ec5d371ca3caf4d254ae8" "6bb16ccf16760fa56620798f292799c89de184aa4e58f50bb13dee67ed533e10" default)))
 '(package-selected-packages (quote (json-mode magit ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-button-mouse ((t (:background "#586e75" :foreground "brightblack" :box (:line-width 2 :style released-button)))))
 '(custom-invalid ((t (:background "red" :foreground "white"))))
 '(diff-context ((t (:foreground "brightgreen"))))
 '(diff-file-header ((t (:background "grey60" :foreground "black" :weight bold))))
 '(diff-header ((t (:background "grey45" :foreground "black"))))
 '(diff-index ((t (:inherit diff-file-header :foreground "black"))))
 '(diff-nonexistent ((t (:inherit diff-file-header :foreground "black"))))
 '(diff-refine-added ((t (:inherit diff-refine-change :background "green"))))
 '(diff-refine-changed ((t (:background "yellow" :foreground "black"))))
 '(diff-refine-removed ((t (:inherit diff-refine-change :background "red"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "brightgreen" :slant normal))))
 '(font-lock-comment-face ((t (:foreground "brightgreen"))))
 '(font-lock-doc-face ((t (:foreground "brightyellow" :slant normal))))
 '(highlight ((t (:background "brightwhite" :foreground "brightgreen"))))
 '(magit-branch-local ((t (:foreground "blue"))))
 '(magit-branch-remote ((t (:foreground "green"))))
 '(magit-diff-added ((t (:background "black" :foreground "green"))))
 '(magit-diff-added-highlight ((t (:background "black" :foreground "green"))))
 '(magit-diff-base ((t (:background "black" :foreground "yellow"))))
 '(magit-diff-base-highlight ((t (:background "black" :foreground "yellow"))))
 '(magit-diff-context ((t (:foreground "brightgreen"))))
 '(magit-diff-context-highlight ((t (:background "black" :foreground "brightgreen"))))
 '(magit-diff-hunk-heading ((t (:background "brightblack" :foreground "brightblue"))))
 '(magit-diff-hunk-heading-highlight ((t (:background "black" :foreground "brightblue"))))
 '(magit-diff-removed ((t (:background "black" :foreground "red"))))
 '(magit-diff-removed-highlight ((t (:background "black" :foreground "red"))))
 '(magit-section-heading ((t (:foreground "yellow" :weight bold))))
 '(magit-section-highlight ((t (:background "black"))))
 '(shadow ((t (:foreground "brightgreen"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "#22aa22" :foreground "black"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "#aa2222" :foreground "black"))))
 '(tool-bar ((t (:foreground "brightgreen" :box (:line-width 1 :style released-button)))))
 '(trailing-whitespace ((t (:background "#dc322f" :foreground "black"))))
 '(tty-menu-enabled-face ((t (:background "blue" :foreground "color-46" :weight bold))))
 '(tty-menu-selected-face ((t (:background "red" :foreground "black")))))


(global-set-key (kbd "C-x g") 'magit-status)

;; whitespace shit
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
