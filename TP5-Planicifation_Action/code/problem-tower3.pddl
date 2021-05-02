;;;;;;;;;;;;;;;;;;;;;;;
;;; problem with 3 disk
;;;;;;;;;;;;;;;;;;;;;;
  
(define (problem Tower3)
	(:domain Hanoi)
	(:objects pic1 pic2 pic3 disk1 disk2 disk3)
	(:init (smaller disk1 pic1) (smaller disk1 pic2) (smaller disk1 pic3) (smaller disk2 pic1)		
		(smaller disk2 pic2) (smaller disk2 pic3) (smaller disk3 pic1) (smaller disk3 pic2)
		(smaller disk3 pic3) (smaller disk1 disk2) (smaller disk1 disk3) (smaller disk2 disk3)
		(clear disk1) (clear pic2) (clear pic3) (onDisk disk1 disk2) (onDisk disk2 disk3) (onPeg disk3 pic1)
		(notOnTable disk1) (notOnTable disk2) (notOnTable disk3) (onTable pic1) (onTable pic2) 
		(onTable pic3) (handEmpty))
	(:goal (and (onDisk disk1 disk2) (onDisk disk2 disk3) (onPeg disk3 pic3)))
)