;;; tss-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from tss.el

(autoload 'tss-popup-help "tss" "\
Popup help about anything at point." t)
(autoload 'tss-jump-to-definition "tss" "\
Jump to method definition at point." t)
(autoload 'tss-implement-definition "tss" "\
Implement inherited definitions of current component." t)
(autoload 'tss-run-flymake "tss" "\
Run check by flymake for current buffer." t)
(autoload 'tss-reload-current-project "tss" "\
Reload project data for current buffer." t)
(autoload 'tss-restart-current-buffer "tss" "\
Restart TSS for current buffer." t)
(autoload 'tss-stop-current-buffer "tss" "\
Stop TSS for current buffer." t)
(autoload 'tss-setup-current-buffer "tss" "\
Do setup for using TSS in current buffer." t)
(autoload 'tss-config-default "tss" "\
Do setting recommemded configuration.")
(register-definition-prefixes "tss" '("ac-source-tss-" "tss-"))


;;; Generated autoloads from typescript.el

(autoload 'typescript-mode "typescript" "\
Major mode for editing typescript.

Key bindings:

\\{typescript-mode-map}

(fn)" t)
(eval-after-load 'folding '(when (fboundp 'folding-add-to-marks-list) (folding-add-to-marks-list 'typescript-mode "// {{{" "// }}}")))
(register-definition-prefixes "typescript" '("typescript-" "with-typescript"))

;;; End of scraped data

(provide 'tss-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; tss-autoloads.el ends here
