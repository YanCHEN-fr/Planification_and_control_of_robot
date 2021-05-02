;;;;;;;;;;;;;;;;;;;;;
;;; problem of cubes from B/C/A/D to D/C/A/B
;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-4-0)
	(:domain BLOCKS)
	(:objects D B A C )
	(:INIT (CLEAR B) (ON B C) (ON C A) (ON A D) (ONTABLE D) (HANDEMPTY))
	(:goal (AND (ON D C) (ON C A) (ON A B)))
)