require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
@total_revenue = Store.sum(:annual_revenue)

puts "Total revenu for the company = #{@total_revenue}"

# On the next line, also output the average annual revenue for all stores.

@total_revenue = Store.average(:annual_revenue)

puts "Average annual revenu for the company = #{@total_revenue}"

# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

@number_of_stores_making_more_than_1m = Store.where("annual_revenue < ?",  1000000).count

puts "Number of stores making more than 1M = #{@number_of_stores_making_more_than_1m}" 

