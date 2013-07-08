(with-open-file (exe #p"./2x0ng-garbage.exe" :if-exists :overwrite :direction :io :element-type '(unsigned-byte 8))
  (file-position exe #x3c)
  (let* ((b0 (read-byte exe))
	 (b1 (read-byte exe))
	 (b2 (read-byte exe))
	 (b3 (read-byte exe))
	 (pe-header (dpb (dpb b3 (byte 8 8) b2)
			 (byte 16 16)
			 (dpb b1 (byte 8 8) b0))))
    (file-position exe (+ pe-header #x5c))
    (write-byte 3 exe)))

  ;; (file-position exe 0)
  ;; (with-open-file (out #p"./2x0ng-nocmd.exe" 
  ;; 		       :direction :output :if-exists :overwrite
  ;; 		       :if-does-not-exist :create
  ;; 		       :element-type '(unsigned-byte 8))
  ;;   (let (byte)
  ;;     (loop while (setf byte (read-byte exe nil))
  ;; 	    do (write-byte byte out)))))
      
		       
  
