(load-theme 'zenburn)

(ido-mode 0)
(helm-mode)

; Do nothing when user presses C-z under a window system
(when (window-system)
  (global-set-key (kbd "C-z") (lambda () (interactive)))
)
