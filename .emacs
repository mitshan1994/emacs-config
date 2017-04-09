(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-14" ))

;; package website BEGIN
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
;; package website END

;; open header files as c++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; style to use in c++ mode
(c-add-style "my-cpp-style"
	     '("stroustrup"
	       (indent-tabs-mode . nil)
	       (c-basic-offset . 4)))

(defun my-c++-mode-hook ()
  (c-set-style "my-cpp-style"))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; load path of files
(add-to-list 'load-path "~/.emacs.d/lisp/")

