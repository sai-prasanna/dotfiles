(setq jsonnet-packages
      '(
        jsonnet-mode
        ))

(setq jsonnet-excluded-packages '())

(defun jsonnet/init-jsonnet-mode ()
  (use-package jsonnet-mode
    :defer t
    :init
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'jsonnet-mode
        "gg" 'jsonnet-jump
        "=" 'jsonnet-reformat-buffer
        "e" 'jsonnet-eval-buffer
        ))))
