(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))

(c-set-offset 'substatement-open 0)
(c-set-offset 'brace-list-open 0)

(defun pal-c-initialization-hook ()
  (subword-mode 1)
  (c-toggle-hungry-state 1)
  (set-variable 'truncate-lines 1)
  ;(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
  (define-key c-mode-base-map (kbd "RET") 'c-indent-new-comment-line)
  (flycheck-mode 1)
)

(defun pal-c-save-hook ()
  (when (eq 'c++-mode major-mode)
    (delete-trailing-whitespace)))

(defun pal-c-linux-code ()
  (interactive)
  (set 'indent-tabs-mode t)
  (set 'c-basic-offset 8))

(add-hook 'c-mode-hook 'pal-c-initialization-hook)
(add-hook 'c++-mode-hook 'pal-c-initialization-hook)
(add-hook 'before-save-hook 'pal-c-save-hook)
