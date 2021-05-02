;;;;;;;;;;;;;;;;;;;;;
;;; problem with 2 disk
;;;;;;;;;;;;;;;;;;;;;

(define (problem Tower2)
	(:domain Hanoi)
	(:objects p1 p2 p3 d1 d2)
	(:init (smaller d1 p1) (smaller d1 p2) (smaller d1 p3) (smaller d2 p1) (smaller d2 p2)
		(smaller d2 p3) (smaller d1 d2) (clear d1) (clear p2) (clear p3)
		(onPeg d2 p1) (onDisk d1 d2) (handEmpty) (onTable p1) (onTable p2) (onTable p3)
		(notOnTable d1) (notOnTable d2))
	(:goal (and (onDisk d1 d2) (onPeg d2 p3)))
)