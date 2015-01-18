(load-theme 'zenburn)

(ido-mode 0)
(helm-mode)
(set 'ring-bell-function 'ignore)

; Mac config
(set 'mac-right-option-modifier 'meta)
(set 'mac-option-modifier 'none)


; Do nothing when user presses C-z under a window system
(when (window-system)
  (global-set-key (kbd "C-z") (lambda () (interactive)))
)


; Key bindings
(when (eq system-type 'darwin)
  (set 'mac-function-modifier 'meta) ; meta on the "fn" key
  (set 'mac-option-modifier nil) ; Let the OS determine the meaning of the alt/option key
)

(define-key global-map (kbd "M-.") 'etags-select-find-tag-at-point)
(define-key global-map (kbd "M-:") 'etags-select-find-tag)
(define-key global-map (kbd "M--") 'hippie-expandnd)
(define-key global-map (kbd "<f12>") 'call-last-kbd-macro)
(define-key global-map (kbd "C-<f12>") '(lambda () (interactive) (compile compile-command)))
(define-key global-map (kbd "C-x o") 'win-switch-dispatch)
