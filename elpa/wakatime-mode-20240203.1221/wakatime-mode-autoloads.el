;;; wakatime-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from wakatime-mode.el

(autoload 'wakatime-mode "wakatime-mode" "\
Toggle WakaTime (WakaTime mode).

This is a minor mode.  If called interactively, toggle the
`wakatime mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `wakatime-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(put 'global-wakatime-mode 'globalized-minor-mode t)
(defvar global-wakatime-mode nil "\
Non-nil if Global Wakatime mode is enabled.
See the `global-wakatime-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-wakatime-mode'.")
(custom-autoload 'global-wakatime-mode "wakatime-mode" nil)
(autoload 'global-wakatime-mode "wakatime-mode" "\
Toggle Wakatime mode in all buffers.
With prefix ARG, enable Global Wakatime mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Wakatime mode is enabled in all buffers where `(lambda nil
(wakatime-mode 1))' would do it.

See `wakatime-mode' for more information on Wakatime mode.

(fn &optional ARG)" t)
(register-definition-prefixes "wakatime-mode" '("s-blank" "wakatime-"))

;;; End of scraped data

(provide 'wakatime-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; wakatime-mode-autoloads.el ends here
