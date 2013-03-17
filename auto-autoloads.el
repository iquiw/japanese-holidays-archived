;;; $Id: auto-autoloads.el 750 2005-10-07 07:58:02Z kose $
;;;
;;; packages/pkginfo/japanese-holidays/auto-autoloads.el
;;; Copyright (C) 2005 The Meadow Team
;;; Author: KOSEKI Yoshinori <kose@meadowy.org>

;; 使用するには、このファイルを load-path の通った所に置き、~/.emacs に
;; 以下の設定を追加します。
(add-hook 'calendar-load-hook
          (lambda ()
            (require 'japanese-holidays)
            (setq calendar-holidays
                  (append japanese-holidays local-holidays other-holidays)
                  mark-holidays-in-calendar t)))

;; 土日をマークするには以下の設定を追加します。
(add-hook 'calendar-today-visible-hook 'calendar-mark-weekend)
(add-hook 'calendar-today-invisible-hook 'calendar-mark-weekend)

;; “きょう”をマークするには以下の設定を追加します。
(add-hook 'calendar-today-visible-hook 'calendar-mark-today)

;;; auto-autoloads.el ends here
