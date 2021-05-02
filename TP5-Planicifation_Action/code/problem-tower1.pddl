;;;;;;;;;;;;;;;;;;;;;
;;; problem of 1 disk
;;;;;;;;;;;;;;;;;;;;;

(define (problem tower1)
	(:domain Hanoi)
	(:objects pic1 pic2 pic3 disk1)
	(:init (smaller disk1 pic1) (smaller disk1 pic2) 
		(smaller disk1 pic3) (clear disk1) 
		(clear pic2) (clear pic3) (onTable pic1)
		(onTable pic2) (onTable pic3) (onPeg disk1 pic1)
		(not (onTable disk1))(handEmpty))
	(:goal (and (onPeg disk1 pic3)))
)