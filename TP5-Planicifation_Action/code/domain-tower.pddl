;;;;;;;;;;;
;;; @author: DavideLuigiBrambilla
;;; Modified by Yan CHEN
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Tower of Hanoi
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain Hanoi)
	(:requirements :strips)
	(:predicates (clear ?x)		;determine if the top of x is empty
		(onDisk ?x ?y)	;determine if the x is on the y
		(onPeg ?x ?y)	;determine if the x on the table
		(smaller ?x ?y)	;x<y
		(handEmpty)	;nothing in the hand
		(holding ?x)	;x is in the hand
		(onTable ?x)	;x is on the table
		(notOnTable ?x))	;x is not on the table

	(:action pick_up_from_disk
		:parameters (?disk1 ?disk2)
		:precondition (and (onDisk ?disk1 ?disk2) (clear ?disk1) (handEmpty))
		:effect (and (not (onDisk ?disk1 ?disk2)) (clear ?disk2) (holding ?disk1) (not (handEmpty)) (not (clear ?disk1))))

	(:action pick_up_from_peg
		:parameters (?disk ?peg)
		:precondition (and (onPeg ?disk ?peg) (clear ?disk) (handEmpty))
		:effect (and (holding ?disk) (not(handEmpty)) (clear ?peg) (not(onPeg ?disk ?peg)) (not(clear ?disk))))
	
	(:action put_on_disk
		:parameters (?disk1 ?disk2)
		:precondition (and (smaller ?disk1 ?disk2) (clear ?disk2) (holding ?disk1) (notOnTable ?disk2))
		:effect (and (onDisk ?disk1 ?disk2) (handEmpty) (not (holding ?disk1)) (clear ?disk1) (not (clear ?disk2))))

	(:action put_on_peg 
		:parameters (?disk ?peg)
		:precondition (and (clear ?peg) (holding ?disk) (onTable ?peg))
		:effect (and (not(clear ?peg)) (onPeg ?disk ?peg) (not (holding ?disk)) (handEmpty) (clear ?disk)))

)