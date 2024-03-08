require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Ask the user for a store name
puts "Enter store name:"
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out the other fields
new_store = Store.new(name: store_name)

# Display the error messages provided back from ActiveRecord to the user
if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create store. Errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
