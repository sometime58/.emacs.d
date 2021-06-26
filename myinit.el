(setq inhibit-startup-message t)
(tool-bar-mode -1)
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

(use-package auto-complete
:ensure t
:init 
(progn
(ac-config-default)
(global-auto-complete-mode t)
))
