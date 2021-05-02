;;;;;;;;;;;;;;;;;;;;;
;;; problem of path
;;;;;;;;;;;;;;;;;;;;

(define (problem graph)
(:domain graph)
(:objects A B C D E F G H I J K)
(:INIT (pose A) (arc A C) (arc C B) (arc C D) (arc C F) (arc F E) (arc F G) (arc F I) (arc I H) (arc I J))
(:goal (AND (pose H)))
)