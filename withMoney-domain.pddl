(define (domain food_delivery)
  (:requirements :typing :action-costs :strips :negative-preconditions)
  (:types
    location target locatable - object
    waiter collectable - locatable
    hand-number - object
  )

  (:predicates
    (route ?l1 ?l2 - location)
    (at ?x - locatable ?w - location)
    (pick ?x - collectable  ?w - waiter)
    (hand ?w - waiter ?h1 - hand-number)
    (hand-predecessor ?h1 ?h2 - hand-number)
  )

  (:functions
    (table-distance ?l1 ?l2 - location) - number
    (total-cost) - number
  )

  (:action walk
    :parameters (?w - waiter ?l1 ?l2 - location)
    :precondition (and
      (at ?w ?l1)
      (route ?l1 ?l2)
    )
    :effect (and
      (not (at ?w ?l1))
      (at ?w ?l2)
      (increase (total-cost) (table-distance ?l1 ?l2))
    )
  )

  (:action pick-up
    :parameters (?w - waiter ?l - location ?c - collectable ?h1 ?h2 - hand-number)
    :precondition (and
      (at ?w ?l)
      (at ?c ?l)
      (hand-predecessor ?h1 ?h2)
      (hand ?w ?h2)
    )
    :effect (and
      (not (at ?c ?l))
      (pick ?c ?w)
      (hand ?w ?h1)
      (not (hand ?w ?h2))
      (increase (total-cost) 1)
    )
  )

  (:action serve
    :parameters (?w - waiter ?l - location ?c - collectable ?h1 ?h2 - hand-number)
    :precondition (and
      (at ?w ?l)
      (pick ?c ?w)
      (hand-predecessor ?h1 ?h2)
      (hand ?w ?h1)
    )
    :effect (and
      (not (pick ?c ?w))
      (at ?c ?l)
      (hand ?w ?h2)
      (not (hand ?w ?h1))
      (increase (total-cost) 1)
    )
  )
)