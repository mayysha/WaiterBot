(define (domain food_delivery)
  (:requirements :typing :action-costs :strips :conditional-effects :negative-preconditions)
  (:types
    location target locatable - object
    waiter food - locatable
    waiter money - locatable
    capacity-number - object
  )

  (:predicates
    (road ?l1 ?l2 - location)
    (at ?x - locatable ?v - location)
    (in ?x - food  ?v - waiter)
    
    (capacity ?v - waiter ?s1 - capacity-number)
    (capacity-predecessor ?s1 ?s2 - capacity-number)
  )

  (:functions
    (road-length ?l1 ?l2 - location) - number
    (total-cost) - number
  )

  (:action walk
    :parameters (?v - waiter ?l1 ?l2 - location)
    :precondition (and
      (at ?v ?l1)
      (road ?l1 ?l2)
    )
    :effect (and
      (not (at ?v ?l1))
      (at ?v ?l2)
      (increase (total-cost) (road-length ?l1 ?l2))
    )
  )

  (:action pick-up
    :parameters (?v - waiter ?l - location ?p - food ?s1 ?s2 - capacity-number)
    :precondition (and
      (at ?v ?l)
      (at ?p ?l)
      (capacity-predecessor ?s1 ?s2)
      (capacity ?v ?s2)
    )
    :effect (and
      (not (at ?p ?l))
      (in ?p ?v)
      (capacity ?v ?s1)
      (not (capacity ?v ?s2))
      (increase (total-cost) 1)
    )
  )

  (:action serve
    :parameters (?v - waiter ?l - location ?p - food ?s1 ?s2 - capacity-number)
    :precondition (and
      (at ?v ?l)
      (in ?p ?v)
      (capacity-predecessor ?s1 ?s2)
      (capacity ?v ?s1)
    )
    :effect (and
      (not (in ?p ?v))
      (at ?p ?l)
      (capacity ?v ?s2)
      (not (capacity ?v ?s1))
      (increase (total-cost) 1)
    )
  )

  

)