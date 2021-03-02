require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the third store (into @store3) as you did the other two before.
# Using Active Record's destroy method, delete the store from the database.
# Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)

@store1 = Store.find_by(id: 1 )
@store2 = Store.find_by(id: 2 )

@store1.update(name: "Aurigan")


