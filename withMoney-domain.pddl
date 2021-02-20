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
    (pick ?c - collectable  ?w - waiter)
    (hand ?w - waiter ?RH - hand-number)
    (hand-sequence ?RH ?LH - hand-number)
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
    :parameters (?w - waiter ?l - location ?c - collectable ?RH ?LH - hand-number)
    :precondition (and
      (at ?w ?l)
      (at ?c ?l)
      (hand-sequence ?RH ?LH)
      (hand ?w ?LH)
    )
    :effect (and
      (not (at ?c ?l))
      (pick ?c ?w)
      (hand ?w ?RH)
      (not (hand ?w ?LH))
      (increase (total-cost) 1)
    )
  )

  (:action serve
    :parameters (?w - waiter ?l - location ?c - collectable ?RH ?LH - hand-number)
    :precondition (and
      (at ?w ?l)
      (pick ?c ?w)
      (hand-sequence ?RH ?LH)
      (hand ?w ?RH)
    )
    :effect (and
      (not (pick ?c ?w))
      (at ?c ?l)
      (hand ?w ?LH)
      (not (hand ?w ?RH))
      (increase (total-cost) 1)
    )
  )
)