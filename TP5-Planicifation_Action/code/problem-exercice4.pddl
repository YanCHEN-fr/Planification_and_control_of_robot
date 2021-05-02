;;;;;;;;;;;;;;;;;;;;;;;;;
;;; problem with cubes from C/G/E/I/J/A/B and F/D/H to C/B/D/F/I/A/E/H/G/J
;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-4-0)
	(:domain BLOCKS)
	(:objects A B C D E F G H I J)
	(:INIT (CLEAR C) (ON C G) (ON G E) (ON E I) (ON I J) (ON J A) (ON A B) (ONTABLE B)
	(CLEAR F) (ON F D) (ON D H) (ONTABLE H) (HANDEMPTY))
	(:goal (AND (ON C B) (ON B D) (ON D F) (ON F I) (ON I A) (ON A E) (ON E H) (ON H G) (ON G J)))
)