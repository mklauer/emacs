;; enhanced ruby mode
(use-package enh-ruby-mode
  :ensure t
  :config
  (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
  (add-to-list 'auto-mode-alist
	       '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode)
	       )
  )

(use-package robe
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'robe-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends))
  )

(use-package ruby-refactor
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'ruby-refactor-mode-launch)
  )

(use-package ruby-electric
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'ruby-electric-mode)
  )

(use-package ruby-test-mode
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'ruby-test-mode)
  )

;; For the following setting you need a ~/.pryrc file:
; Pry.config.correct_indent = false if ENV["INSIDE_EMACS"]
; Pry.config.color = true if ENV["INSIDE_EMACS"]
(use-package inf-ruby
  :config
  (setq inf-ruby-default-implementation "pry")
  )

;; lintner for ruby
; sudo gem install rubocop
(use-package rubocop
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'rubocop-mode)
  )

;; rspec mode
(use-package rspec-mode
  :ensure t
  )
