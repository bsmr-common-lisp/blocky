;; (push (merge-pathnames "lib/" *default-pathname-defaults*)
;;       asdf:*central-registry*)
;; (push #P"/home/dto/blocky/"
;;       asdf:*central-registry*)
;; (push #P"/home/dto/2x0ng/"
;;       asdf:*central-registry*)
;; (ql:quickload '(:lispbuilder-sdl-mixer :lispbuilder-sdl-ttf :lispbuilder-sdl-image :uuid :cl-opengl :cl-fad))
(asdf:load-system :2x0ng)
(ccl:save-application "2x0ng.exe" 
		      :prepend-kernel t
		      :toplevel-function '2x0ng:2x0ng)


;; ;; Close terminal window...
;; (with-open-file (exe #p"./2x0ng.exe" :direction :io :element-type '(unsigned-byte 8))
;;   (file-position exe #x3c)
;;   (let* ((b0 (read-byte exe))
;; 	 (b1 (read-byte exe))
;; 	 (b2 (read-byte exe))
;; 	 (b3 (read-byte exe))
;; 	 (pe-header (dpb (dpb b3 (byte 8 8) b2)
;; 			 (byte 16 16)
;; 			 (dpb b1 (byte 8 8) b0))))
;;     (file-position exe (+ pe-header #x5c))
;;     (write-byte 3 exe)))

