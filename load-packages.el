(require 'package)
(add-to-list 
 'package-archives 
 '("melpa" . "http://melpa.org/packages/")
 '("marmalade" . "https://marmalade-repo.org/packages/")
)

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
