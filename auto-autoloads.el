;;; $Id: auto-autoloads.el 750 2005-10-07 07:58:02Z kose $
;;;
;;; packages/pkginfo/japanese-holidays/auto-autoloads.el
;;; Copyright (C) 2005 The Meadow Team
;;; Author: KOSEKI Yoshinori <kose@meadowy.org>

;; $B;HMQ$9$k$K$O!"$3$N%U%!%$%k$r(B load-path $B$NDL$C$?=j$KCV$-!"(B~/.emacs $B$K(B
;; $B0J2<$N@_Dj$rDI2C$7$^$9!#(B
(add-hook 'calendar-load-hook
          (lambda ()
            (require 'japanese-holidays)
            (setq calendar-holidays
                  (append japanese-holidays local-holidays other-holidays)
                  mark-holidays-in-calendar t)))

;; $BEZF|$r%^!<%/$9$k$K$O0J2<$N@_Dj$rDI2C$7$^$9!#(B
(add-hook 'calendar-today-visible-hook 'calendar-mark-weekend)
(add-hook 'calendar-today-invisible-hook 'calendar-mark-weekend)

;; $B!H$-$g$&!I$r%^!<%/$9$k$K$O0J2<$N@_Dj$rDI2C$7$^$9!#(B
(add-hook 'calendar-today-visible-hook 'calendar-mark-today)

;;; auto-autoloads.el ends here
