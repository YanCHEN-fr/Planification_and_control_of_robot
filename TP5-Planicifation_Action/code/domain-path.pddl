;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;graph acyclique
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (domain graph)
	(:requirements : strips)
	(:predicates (arc ?from ?to)	;direction of arc
		(pose ?from))	;current position

	(:action go 
		:parameters (?from ?to)
		:precondition (and (pose ?from) (arc ?from ?to))
		:effect (and (pose ?to) (not (pose ?from))))
)