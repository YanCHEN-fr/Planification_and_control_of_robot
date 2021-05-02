;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; problem singe attraper babanes
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem singe-bananes01)
	(:domain Singe-banane)
	(:objects A B C)
	(:INIT (Singe A)
		(Caisse B) 
		(Banane C)
		(Bas) 
		(not(Haut))
		(not(HandBananas))
		(HandEmpty))
	(:goal (AND (HandBananas)))
)