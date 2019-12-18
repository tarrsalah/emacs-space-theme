;;; space-theme.el --- Colorless dark Emacs theme

;; Copyright (C) 2019 Salah Eddine Taouririt <tarrsalah@gmail.com>

;;
;; Author: Salah Eddine Taouririt <tarrsalah@gmail.com>
;; Created: December 2019
;; Version: 1.0
;; Package-Requires: ((emacs "26.0"))
;; URL: https://github.com/tarrsalah/emacs-space-theme

;;; Commentary:
;; Colorless dark Emacs theme

;;; License:

;; This file is not part of GNU Emacs.
;; However, it is distributed under the same license.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(deftheme space "Colorless dark Emacs theme")

(let*
    ((space/bg "#111")
     (space/comment "#969896")
     (space/dir "#9f621d")
     (space/fg "#eee")
     (space/hl "#333"))

  (custom-theme-set-faces
   `space
   `(default ((t (:foreground ,space/fg :background ,space/bg))))


   ;; dired
   `(dired-directory ((t (:foreground ,space/dir))))

   ;;comment
   `(font-lock-comment-face (( t(:foreground ,space/comment :slant italic))))

   ;;; no syntax highlight
   `(font-lock-builtin-face		((t (:foreground ,space/fg))))
   `(font-lock-function-name-face	((t (:foreground ,space/fg))))
   `(font-lock-keyword-face		((t (:foreground ,space/fg))))
   `(font-lock-preprocessor-face	((t (:foreground ,space/fg))))
   `(font-lock-type-face		((t (:foreground ,space/fg))))
   `(font-lock-constant-face		((t (:foreground ,space/fg))))
   `(font-lock-variable-name-face	((t (:foreground ,space/fg))))

   ;; change default
   `(hl-line ((t (:background ,space/hl))))
   `(font-lock-warning-face		((t (:foreground "red" :bold t))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


;;;###autoload
(defun space-theme()
  "Apply the space theme."
  (interactive)
  (load-theme 'space t))

(provide 'space-theme)

(provide-theme 'space)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; space-theme.el ends here
