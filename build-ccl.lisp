(push (merge-pathnames "lib/" *default-pathname-defaults*)
      asdf:*central-registry*)
(ql:quickload '(:lispbuilder-sdl-mixer :lispbuilder-sdl-ttf :lispbuilder-sdl-image :uuid :cl-opengl :cl-fad))
(asdf:load-system :2x0ng)
(ccl:save-application "2x0ng.exe" 
		      :prepend-kernel t
		      :application-type :gui 
		      :toplevel-function '2x0ng:2x0ng)


