;; startup message page off
(setq inhibit-startup-message t) 
;; mode tinkerings
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)
;; font (alternatives Avenir, Chalkboard, Charter, Courier, Georgia, Menlo, Monaco, Optima)
(set-face-attribute 'default nil :font "Avenir" :height 150) 
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

(use-package color-theme-modern
  :ensure t)

(use-package cyberpunk-theme
  :ensure t
  :config (load-theme 'cyberpunk t))

					; (use-package ample-theme
					;   :ensure t
					;   :init(progn
					; 	 (load-theme 'ample t t)
					; 	 (load-theme 'ample-flat t t)
					; 	 (load-theme 'ample-light t t)
					; 	 (enable-theme 'ample)
					; 	 (enable-theme 'ample-flat)
					; 	 (enable-theme 'ample-light))
					;   :defer t)

; (use-package doom-modeline
;  :ensure t
;  :init (doom-modeline-mode 1))

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(defalias 'list-buffers 'ibuffer)
(use-package tabbar
  :ensure t
  :config
  (tabbar-mode 1))

(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t
  :config
  (progn
    (ivy-mode)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    ))

(use-package avy
:ensure t
:bind ("M-s" . avy-goto-char))

(use-package ace-window
:ensure t
:init
(progn
(global-set-key [remap other-window] 'ace-window)
))

(use-package ox-reveal
    :ensure ox-reveal)

  (setq
   org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js")
  (setq org-reveal-mathjax t)

(use-package htmlize
:ensure t)

(use-package auctex
  :defer t
  :ensure t
  :config
  (setq TeX-auto-save t))

(use-package flycheck
:ensure t
:init
(global-flycheck-mode t))

(use-package yasnippet
:ensure t
:init
(yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)

(with-eval-after-load 'python
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
	  (python-shell-completion-native-output-timeout
	   python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))
(setq python-shell-completion-native-enable nil)
(setq python-shell-interpreter "python3")



(use-package command-log-mode
  :ensure t
  :config
  (global-command-log-mode))

(use-package auto-complete
:ensure t
:init 
(progn
(ac-config-default)
(global-auto-complete-mode t)
))

(use-package ivy
  :ensure t
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
	 ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-line)
	 ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))
