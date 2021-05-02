;;;;;;;;;;;
;;; @author: DavideLuigiBrambilla
;;; Modified by Yan CHEN
;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Domain Singe
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain Singe-banane)
  	(:requirements :strips)
  	(:predicates (Singe ?x)	;singe in the position x 
	         	(Caisse ?x) 	;caisse in the position x 
		(Banane ?x)	;banane in the position x
		(Bas) 	;low position
		(Haut) 	;high position
		(HandBananas) 	;bananas in the hand
		(HandEmpty)) 	;nothing in the hand

  	(:action Aller
		:parameters (?from ?to)
		:precondition (and (Singe ?from) (Bas))
	     	:effect (and (Singe ?to) (not (Singe ?from))))

  	(:action Pousser
		:parameters (?from ?to)
		:precondition (and (Singe ?from) (Caisse ?from) (Bas))
	     	:effect (and (Caisse ?to) (not (Caisse ?from)) (Singe ?to)))

  	(:action Monter
		:parameters (?obj)
		:precondition (and (Singe ?obj) (Caisse ?obj) (Banane ?obj) (Bas))
	     	:effect (and (Haut) (not(Bas))))

  	(:action Descendre
		:parameters (?obj)
		:precondition (and (Singe ?obj)(Caisse ?obj) (Haut))
	     	:effect (and (Bas) (not(Haut))))

  	(:action Attraper
		:parameters (?obj)
		:precondition (and (Banane ?obj) (HandEmpty) (Haut))
	     	:effect (and (HandBananas) (not(HandEmpty))))

  	(:action Lacher
		:parameters (?obj)
		:precondition (and (HandBananas) (Banane ?obj) (Haut))
	     	:effect (and (not(HandBananas)) (HandEmpty)))
)