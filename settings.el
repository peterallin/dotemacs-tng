(load-theme 'zenburn)

(ido-mode 0)
(helm-mode)
(set 'ring-bell-function 'ignore)

; Do nothing when user presses C-z under a window system
(when (window-system)
  (global-set-key (kbd "C-z") (lambda () (interactive)))
)
