(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-js starter-kit-ruby starter-kit-eshell)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'custom-theme-load-path "/home/ray/.emacs.d/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

(add-to-list 'load-path "~/.emacs.d/zencoding")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(require 'jka-compr)

(global-unset-key (kbd "C-x C-u"))
(global-set-key (kbd "C-x C-u") (kbd "C-x u"))


