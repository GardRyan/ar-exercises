require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Output the total revenue for the entire company (all stores)
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for the Company: $#{total_revenue}"

# Calculate the average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for All Stores: $#{average_revenue}"

# Output the number of stores generating $1M or more in annual sales
stores_over_1m = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of Stores Generating $1M or More in Annual Sales: #{stores_over_1m}"
