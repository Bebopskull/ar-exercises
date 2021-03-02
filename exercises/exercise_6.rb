require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


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
  s.name = "Gastow"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "a", last_name: "Virani", hourly_rate: 30)
@store1.employees.create(first_name: "b", last_name: "Virani", hourly_rate: 40)
@store1.employees.create(first_name: "c", last_name: "Virani", hourly_rate: 20)

@store2.employees.create(first_name: "employee", last_name: "lambda", hourly_rate: 20)
@store2.employees.create(first_name: "employee", last_name: "lambda", hourly_rate: 30)
@store2.employees.create(first_name: "employee", last_name: "lambda", hourly_rate: 40)
@store2.employees.create(first_name: "employee", last_name: "lambda", hourly_rate: 60)

