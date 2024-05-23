(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(ido-mode 1)
(set-frame-font "IosevkaNerdFont-18")
(global-display-line-numbers-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(js-indent-level 2)
 '(package-selected-packages
   '(org-modern org-contrib company git flycheck-posframe lsp-ui tss wakatime-mode drag-stuff clang-capf clang-format+ cmake-mode markdown-preview-mode typescript-mode svelte-mode lsp-mode gruber-darker-theme))
 '(sgml-basic-offset 2)
 '(typescript-indent-level 2)
 '(wakatime-api-key "")
 '(wakatime-cli-path "~/.wakatime/wakatime-cli"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key [C-down-mouse-3] nil)
(global-set-key [mouse-3] nil)
(global-unset-key [C-down-mouse-1])

(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

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

(use-package flycheck-posframe
  :ensure t
  :after flycheck
  :config (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))

(setq create-lockfiles nil)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'wakatime-mode)
(add-hook 'svelte-mode-hook #'lsp)

(setq company-minimum-prefix-length 1
      company-idle-delay 0.0) ;; default is 0.2

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c C-t") #'org-todo)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)


(defun psachin/create-notes-file ()
  "Create an org file in ~/notes/."
  (interactive)
  (let ((name (read-string "Filename: ")))
    (expand-file-name (format "%s.org"
                              name) "~/notes/")))



(setq org-capture-templates
      '(("n" "Notes" entry
         (file psachin/create-notes-file)
	 "* TITLE%?\n %U")))

(menu-bar-mode -1)
