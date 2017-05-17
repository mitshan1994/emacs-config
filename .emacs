(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(inhibit-startup-screen t))

;; check OS type
(cond
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (load "~/.emacs.d/different_os/linux.el")))
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (load "~/.emacs.d/different_os/windows.el")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (message "Mac OS X"))))

;; show column number
(setq column-number-mode t)

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

;; don't produce temporary files
(setq make-backup-files nil)

;; rtags shortcuts  BEGIN
(global-set-key (kbd "M-.") 'rtags-find-symbol-at-point)
(global-set-key (kbd "M-,") 'rtags-find-symbol)
;; rtags shortcuts  END

;; Neo tree BEGIN
(global-set-key [f8] 'neotree-toggle)
;; Neo tree END

;; CC Mode shortcuts BEGIN

;; CC Mode shortcuts END
