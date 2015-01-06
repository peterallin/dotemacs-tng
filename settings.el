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
