; Mac config
(when (eq system-type 'darwin)
  (set 'mac-function-modifier 'meta) ; meta on the "fn" key
  (set 'mac-option-modifier nil) ; Let the OS determine the meaning of the alt/option key
)

; I find the suspend with C-z valuable when running in a terminal. But
; having the window minimize in a windowing system is just annoying
(when (window-system)
  (global-set-key (kbd "C-z") (lambda () (interactive)))
)

(define-key global-map (kbd "<f12>") 'call-last-kbd-macro)
(define-key global-map (kbd "M--") 'pal-hippie-expand)
(define-key global-map (kbd "M-.") 'etags-select-find-tag-at-point)
(define-key global-map (kbd "M-:") 'etags-select-find-tag)
(define-key global-map (kbd "s-,") 'comment-dwim-2)
(define-key global-map (kbd "s-SPC") 'ace-jump-mode)
(define-key global-map (kbd "s-c") (make-sparse-keymap))
(define-key global-map (kbd "s-c c") 'recompile)
(define-key global-map (kbd "s-c n") 'compile)
(define-key global-map (kbd "s-c s-c") 'recompile)
(define-key global-map (kbd "s-c s-n") 'compile)
(define-key global-map (kbd "s-f") 'projectile-ag)
(define-key global-map (kbd "s-m") 'magit-status)
(define-key global-map (kbd "s-n") 'linum-mode)
(define-key global-map (kbd "s-o") 'ace-select-window)
(define-key global-map (kbd "s-p") 'helm-projectile)
(define-key global-map (kbd "s-s") 'sort-lines)


; Workarounds for probable misconfigurations in other software
(define-key global-map (kbd "<select>") 'move-end-of-line)
