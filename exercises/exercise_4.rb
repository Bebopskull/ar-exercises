require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Borrowing and modifying the code from Exercise one, create 3 more stores:
burnaby = Store.new do |s|
  s.name = "Burnaby"
  s.annual_revenue = 300000
  s.mens_apparel = true
  s.womens_apparel = true
  s.save
end

richmond = Store.new do |s|
  s.name = "Richmond"
  s.annual_revenue = 1260000
  s.mens_apparel = false
  s.womens_apparel = true
  s.save
end

burnaby = Store.new do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
  s.save
end

burnaby = Store.new do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
  s.save
end

richmond = Store.new do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end

burnaby = Store.new do |s|
  s.name = "Gastow"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end





# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.

@mens_stores = Store.where(mens_apparel: true)

# pp @mens_stores

# Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.find_each do |store|
  puts store.name
  puts "Annual revenu: #{store.annual_revenue}"
end

# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where("annual_revenue < ?",  1000000)


# ( womens_apparel: true )

pp @womens_stores

