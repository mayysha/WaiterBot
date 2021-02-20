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
  rice - food
  soup - food
  friedrice - food
  juice - food
  coffee - food
  cake - food
  steak - food 
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
 )
 (:init
  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (road table-4 table-2)
  (= (road-length table-4 table-2) 24)
  (road table-2 table-4)
  (= (road-length table-2 table-4) 24)
  (road counter table-1)
  (= (road-length counter table-1) 30)
  (road table-1 counter)
  (= (road-length table-1 counter) 30)
  (road counter table-5)
  (= (road-length counter table-5) 28)
  (road table-5 counter)
  (= (road-length table-5 counter) 28)
  (road table-2 counter)
  (= (road-length table-2 counter) 28)
  (road counter table-2)
  (= (road-length counter table-2) 28)
  (road table-6 counter)
  (= (road-length table-6 counter) 30)
  (road counter table-6)
  (= (road-length counter table-6) 30)
  (road table-4 table-3)
  (= (road-length table-4 table-3) 18)
  (road table-3 table-4)
  (= (road-length table-3 table-4) 18)
  (road table-1 table-3)
  (= (road-length table-1 table-3) 24)
  (road table-3 table-1)
  (= (road-length table-3 table-1) 24)
  (road table-10 table-3)
  (= (road-length table-10 table-3) 24)
  (road table-3 table-10)
  (= (road-length table-3 table-10) 24)
  (road table-9 table-3)
  (= (road-length table-9 table-3) 24)
  (road table-3 table-9)
  (= (road-length table-3 table-9) 24)
  (road table-10 table-4)
  (= (road-length table-10 table-4) 24)
  (road table-4 table-10)
  (= (road-length table-4 table-10) 24)
  (road table-9 table-4)
  (= (road-length table-9 table-4) 24)
  (road table-4 table-9)
  (= (road-length table-4 table-9) 24)
  (road table-10 table-9)
  (= (road-length table-10 table-9) 24)
  (road table-9 table-10)
  (= (road-length table-9 table-10) 24)
  (road table-11 table-9)
  (= (road-length table-11 table-9) 24)
  (road table-9 table-11)
  (= (road-length table-9 table-11) 24)
  (road table-10 table-12)
  (= (road-length table-10 table-12) 24)
  (road table-12 table-10)
  (= (road-length table-12 table-10) 24)
  (road table-11 table-12)
  (= (road-length table-11 table-12) 24)
  (road table-12 table-11)
  (= (road-length table-12 table-11) 24)
  (road table-5 table-7)
  (= (road-length table-5 table-7) 18)
  (road table-7 table-5)
  (= (road-length table-7 table-5) 18)
  (road table-8 table-7)
  (= (road-length table-8 table-7) 18)
  (road table-7 table-8)
  (= (road-length table-7 table-8) 18)
  (road table-8 table-6)
  (= (road-length table-8 table-6) 18)
  (road table-6 table-8)
  (= (road-length table-6 table-8) 18)
  (at rice counter)
  (at soup counter)
  (at friedrice counter)
  (at coffee counter)
  (at cake counter)
  (at juice counter)
  (at steak counter)
  (at waiter1 counter)
  (at waiter2 counter)
  (at waiter3 counter)

  (capacity waiter1 capacity-2)
  (capacity waiter2 capacity-2)
  (capacity waiter3 capacity-2)
 )
 (:goal (and
  (at rice table-4)
  (at soup table-2)
  (at friedrice table-11)
  (at steak table-9)
  (at juice table-4)
  (at cake table-7)
  (at coffee table-9)

  (at waiter1 counter)
  (at waiter2 counter)
  (at waiter3 counter)
 ))
 (:metric minimize (total-cost))
)
