;; Configruation for helm
(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x C-f" . helm-find-files )
	 :map helm-map
  	      ( "<tab>" . helm-execute-persistent-action) ; rebind tab to do persistent action
  	      ( "C-i" . helm-execute-persistent-action) ; make TAB works in terminal
  	      ( "C-z" . helm-select-action) ; list actions using C-z
	      )
  :config
  (helm-mode 1)
  )


