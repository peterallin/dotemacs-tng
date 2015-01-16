(add-hook 'python-mode-hook 'pal-python-mode-hook)
(add-to-list 'auto-mode-alist '("SConstruct" . python-mode))
(add-to-list 'auto-mode-alist '("SConscript" . python-mode))

(defun pal-python-save-hook ()
  (when (eq 'python-mode major-mode)
    (delete-trailing-whitespace)))

(add-hook 'before-save-hook 'pal-python-save-hook)
