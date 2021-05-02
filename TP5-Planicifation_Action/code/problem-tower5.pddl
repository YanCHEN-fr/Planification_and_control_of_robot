;;;;;;;;;;;;;;;;;;;;;;;
;;; problem with 5 disk
;;;;;;;;;;;;;;;;;;;;;;

(define (problem Tower5)
	(:domain Hanoi)
	(:objects pic1 pic2 pic3 disk1 disk2 disk3 disk4 disk5)
	(:init (smaller disk1 pic1) (smaller disk1 pic2) (smaller disk1 pic3) (smaller disk2 pic1) (smaller disk2 pic2) (smaller disk2 pic3)
		(smaller disk3 pic1) (smaller disk3 pic2) (smaller disk3 pic3) (smaller disk4 pic1) (smaller disk4 pic2) (smaller disk4 pic3)
		(smaller disk5 pic1) (smaller disk5 pic2) (smaller disk5 pic3) (smaller disk1 disk2) (smaller disk1 disk3) (smaller disk1 disk4)(smaller disk1 disk5)
		(smaller disk2 disk3) (smaller disk2 disk4) (smaller disk2 disk5) (smaller disk3 disk4) (smaller disk3 disk5) (smaller disk4 disk5)
		(clear disk1) (clear pic2) (clear pic3) (onDisk disk4 disk5) (onDisk disk3 disk4) (onDisk disk2 disk3) (onDisk disk1 disk2) (onPeg disk5 pic1)
		(onTable pic1) (onTable pic2) (onTable pic3) (notOnTable disk1) (notOnTable disk2) (notOnTable disk3) (notOnTable disk4) (notOnTable disk5) (handEmpty))
	(:goal (and (onDisk disk1 disk2) (onDisk disk2 disk3) (onDisk disk3 disk4) (onDisk disk4 disk5) (onTable disk5 pic3)))
)