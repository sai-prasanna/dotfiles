(require 'package) 
(add-to-list 'package-archives
                          '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.
   Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; Make sure to have downloaded archive description.
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; Activate installed packages
(package-initialize)

(ensure-package-installed 'monokai-theme
			  'helm
			  'yasnippet
			  'company-sourcekit
			  'projectile)

;; Visual Themes , Font settings
(load-theme 'monokai t)

(require 'linum)
(global-linum-mode 1)    ;; show line numbers by default
(global-hl-line-mode 1)    ;; highlight current line
(set-face-background hl-line-face "gray13") ;; try changing it's color)

(require 'company-sourcekit)
(add-to-list 'company-backends 'company-sourcekit)

(require 'helm)
(global-set-key (kbd "M-x")                          'undefined)
(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f")                      'helm-find-files)
(helm-mode 1)
(setq helm-candidate-number-limit           100
      helm-idle-delay                       0.0
      helm-input-idle-delay                 0.01
      helm-quick-update                     t
      helm-ff-skip-boring-files             t
      helm-ff-file-name-history-use-recentf t
      helm-M-x-fuzzy-match                  t)

;; Disable mac specific ls stuff
(when (eq system-type 'darwin)
  (require 'ls-lisp)
  (setq ls-lisp-use-insert-directory-program nil))

;; make backup to a designated dir, mirroring the full path
(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let* (
        (backupRootDir "~/.emacs.d/emacs-backup/")
        (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path, ➳ for example: “C:”
        (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
        )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath
  )
)

;; Change backup to central repo
(setq make-backup-file-name-function 'my-backup-file-name)

;; Disable audio bell
(setq ring-bell-function 'ignore)
