(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;require evil
;;package-install evil off of melpa
(require 'evil)
(evil-mode 1)

;;jk escape
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

;;set evil cursor color
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

;;load the theme
;;theme needed to be installed
(load-theme 'solarized-light' t)

;;line nums
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
(global-linum-mode t)
(setq linum-format "%d ")

;;ido mode
(ido-mode 1)
(setq ido-separator "\n")

;;activate windmove
(when (fboundp 'windmove-default-keybindings)
    (windmove-default-keybindings))

;;disable toolbar
(tool-bar-mode -1)

;;install font
;;sudo apt-get install fonts-inconsolata
(set-default-font "Inconsolata-12")

;;smooth scrolling
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

;;space instead of tabs
(setq-default tab-width 4 indent-tabs-mode nil)

;;helm
;;package-install helm
(require 'helm)

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
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'projectile)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(projectile-global-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(package-selected-packages
   (quote
    (color-theme ## solarized-theme key-chord spacemacs-dark zenburn-theme tabbar spacemacs-theme projectile professional-theme powerline paren-completer neotree highlight-parentheses helm evil autopair auto-complete ample-zen-theme ample-theme))))
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
