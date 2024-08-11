;; appearance
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(set-frame-font "IosevkaNerdFont-18")
(global-display-line-numbers-mode)
(menu-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(git-gutter:added-sign "  ")
 '(git-gutter:deleted-sign "  ")
 '(git-gutter:modified-sign "  ")
 '(js-indent-level 2)
 '(package-selected-packages
   '(tide git-gutter org-modern org-contrib company git flycheck-posframe lsp-ui tss drag-stuff clang-capf clang-format+ cmake-mode markdown-preview-mode typescript-mode svelte-mode lsp-mode gruber-darker-theme))
 '(sgml-basic-offset 2)
 '(typescript-indent-level 2))
;; disable keys
(global-set-key [C-down-mouse-3] nil)
(global-set-key [mouse-3] nil)
(global-unset-key [C-down-mouse-1])

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; disable backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t  ; Don't de-link hard links
      version-control        t  ; Use version numbers on backups
      delete-old-versions    t  ; Automatically delete excess backups:
      kept-new-versions      20 ; how many of the newest versions to keep
      kept-old-versions      5) ; and how many of the old

(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
               '(svelte-mode . ("svelteserver" "--stdio"))))

(setq create-lockfiles nil)

;; (add-hook 'after-init-hook 'global-company-mode)
(add-hook 'svelte-mode-hook 'lsp)

(setq company-minimum-prefix-length 2
      company-idle-delay 0.2) ;; default is 0.2

;; git gutter
(global-git-gutter-mode +1)

(set-face-background 'git-gutter:modified "yellow") ;; background color
(set-face-background 'git-gutter:added "green")
(set-face-background 'git-gutter:deleted "red")

;; disable company-mode for specific files
(add-hook 'shell-mode-hook (lambda () (company-mode -1)))
(add-hook 'c-mode-hook (lambda () (company-mode -1)))

(global-set-key (kbd "C-c r") (lambda ()
                                (interactive)
                                (revert-buffer t t t)
                                (message "buffer is reverted")))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))


(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'typescript-mode-hook #'tsx-ts-mode)

(setq treesit-language-source-alist
      '((tsx        "https://github.com/tree-sitter/tree-sitter-typescript"
                    "v0.20.3"
                    "tsx/src")
        (typescript "https://github.com/tree-sitter/tree-sitter-typescript"
                    "v0.20.3"
                    "typescript/src")))

(setq whitespace-style '(space-mark))
(setq whitespace-display-mappings '((space-mark 32 [183] [46])))

(defface my-whitespace-face
  '((t (:foreground "#333")))
  "Face for displaying whitespace spaces.")

(setq whitespace-space 'my-whitespace-face)
(setq whitespace-style '(face spaces space-mark))

(global-whitespace-mode 1)
