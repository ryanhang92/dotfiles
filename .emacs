(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;require evil
;;package-install evil off of melpa
(require 'evil)
(evil-mode 1)

;;activate windmove
(when (fboundp 'windmove-default-keybindings)
    (windmove-default-keybindings))

;;set evil cursor color
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

;;load the theme
;;theme needed to be installed
(load-theme 'zenburn t)

;;disable toolbar
(tool-bar-mode -1)

;;install font
;;sudo apt-get install fonts-inconsolata
(set-default-font "Inconsolata-12")

;;display numbers
(global-linum-mode t)

;;smooth scrolling
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

;;space instead of tabs
(setq-default tab-width 4 indent-tabs-mode nil)

;;helm
;;package-install helm
(require 'helm)

;;tabbar
;;package install tabbar of melpa
(tabbar-mode)
(setq tabbar-buffer-groups-function (lambda () (list "All")))
(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)

;;neo-tree - display tree directory with f8
;;package install neotree oof melpa
(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;matching parens
;;package-install autopair - it allows you create backets in pairs and type between
(require 'autopair)
(autopair-global-mode)

;;highlight-parentheses
(require 'highlight-parentheses)
(highlight-parentheses-mode)

;;bracket match highlighting
(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#def")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
(setq show-paren-delay 0)
(show-paren-mode 1)
;;Call customize-face, then type “show-paren-match”. <- choose colors here
;;(blink-matching-paren)

;;autocomplete
;;package-install auto-complete off melpa
(ac-config-default)
(global-auto-complete-mode t) ;;This seemed to make auto complete work after install
(setq ac-delay 0.3)

;;projectile
(require 'projectile)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(projectile-global-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;fly check

;;spell check
;;m-x ispell, or ispell-buffer or ispell word checks spelling, q to kill process
;;m-x flyspell-mode highlights mispellings

;;Test coverage integration
