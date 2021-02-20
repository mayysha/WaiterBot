(define (problem food-delivery-restaurant)
 (:domain food_delivery)
 (:objects
  counter - location
  table-1 - location
  table-2 - location
  table-3 - location
  table-4 - location
  table-5 - location
  table-6 - location
  table-7 - location
  table-8 - location
  table-9 - location
  table-10 - location
  table-11 - location
  table-12 - location
  waiter1 - waiter
  waiter2 - waiter
  waiter3 - waiter
  rice - collectable
  soup - collectable
  friedrice - collectable
  juice - collectable
  coffee - collectable
  cake - collectable
  steak - collectable 
  rice2 - collectable
  soup2 - collectable
  friedrice2 - collectable
  juice2 - collectable
  coffee2 - collectable
  cake2 - collectable
  steak2 - collectable
  bill - collectable
  tips - collectable
  hand-0 - hand-number
  hand-1 - hand-number
  hand-2 - hand-number
  hand-3 - hand-number
 )
 (:init
  (= (total-cost) 0)
  (hand-predecessor hand-0 hand-1)
  (hand-predecessor hand-1 hand-2)
  (hand-predecessor hand-2 hand-3)
  (route table-4 table-2)
  (= (table-distance table-4 table-2) 24)
  (route table-2 table-4)
  (= (table-distance table-2 table-4) 24)
  (route counter table-1)
  (= (table-distance counter table-1) 30)
  (route table-1 counter)
  (= (table-distance table-1 counter) 30)
  (route counter table-5)
  (= (table-distance counter table-5) 28)
  (route table-5 counter)
  (= (table-distance table-5 counter) 28)
  (route table-2 counter)
  (= (table-distance table-2 counter) 28)
  (route counter table-2)
  (= (table-distance counter table-2) 28)
  (route table-6 counter)
  (= (table-distance table-6 counter) 30)
  (route counter table-6)
  (= (table-distance counter table-6) 30)
  (route table-4 table-3)
  (= (table-distance table-4 table-3) 18)
  (route table-3 table-4)
  (= (table-distance table-3 table-4) 18)
  (route table-1 table-3)
  (= (table-distance table-1 table-3) 24)
  (route table-3 table-1)
  (= (table-distance table-3 table-1) 24)
  (route table-10 table-3)
  (= (table-distance table-10 table-3) 24)
  (route table-3 table-10)
  (= (table-distance table-3 table-10) 24)
  (route table-9 table-3)
  (= (table-distance table-9 table-3) 24)
  (route table-3 table-9)
  (= (table-distance table-3 table-9) 24)
  (route table-10 table-4)
  (= (table-distance table-10 table-4) 24)
  (route table-4 table-10)
  (= (table-distance table-4 table-10) 24)
  (route table-9 table-4)
  (= (table-distance table-9 table-4) 24)
  (route table-4 table-9)
  (= (table-distance table-4 table-9) 24)
  (route table-10 table-9)
  (= (table-distance table-10 table-9) 24)
  (route table-9 table-10)
  (= (table-distance table-9 table-10) 24)
  (route table-11 table-9)
  (= (table-distance table-11 table-9) 24)
  (route table-9 table-11)
  (= (table-distance table-9 table-11) 24)
  (route table-10 table-12)
  (= (table-distance table-10 table-12) 24)
  (route table-12 table-10)
  (= (table-distance table-12 table-10) 24)
  (route table-11 table-12)
  (= (table-distance table-11 table-12) 24)
  (route table-12 table-11)
  (= (table-distance table-12 table-11) 24)
  (route table-5 table-7)
  (= (table-distance table-5 table-7) 18)
  (route table-7 table-5)
  (= (table-distance table-7 table-5) 18)
  (route table-8 table-7)
  (= (table-distance table-8 table-7) 18)
  (route table-7 table-8)
  (= (table-distance table-7 table-8) 18)
  (route table-8 table-6)
  (= (table-distance table-8 table-6) 18)
  (route table-6 table-8)
  (= (table-distance table-6 table-8) 18)
  (at rice counter)
  (at soup counter)
  (at friedrice counter)
  (at coffee counter)
  (at cake counter)
  (at juice counter)
  (at steak counter)
  (at rice2 counter)
  (at soup2 counter)
  (at friedrice2 counter)
  (at coffee2 counter)
  (at cake2 counter)
  (at juice2 counter)
  (at steak2 counter)
  (at waiter1 counter)
  (at waiter2 counter)
  (at waiter3 counter)
  (at bill table-4)
  (at tips table-11)
  (hand waiter1 hand-2)
  (hand waiter2 hand-2)
  (hand waiter3 hand-2)
 )
 (:goal (and
  (at rice table-4)
  (at soup table-2)
  (at friedrice table-11)
  (at steak table-9)
  (at juice table-5)
  (at cake table-7)
  (at coffee table-9)

  (at rice2 table-5)
  (at soup2 table-1)
  (at friedrice2 table-12)
  (at steak2 table-8)
  (at juice2 table-4)
  (at cake2 table-4)
  (at coffee2 table-10)
  (at waiter1 counter)
  (at waiter2 counter)
  (at waiter3 counter)
  (at tips counter)
  (at bill counter)
 ))
 (:metric minimize (total-cost))
)
