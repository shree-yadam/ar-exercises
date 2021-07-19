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
puts "TEST CASE 1:"
puts "Enter store name: "
store_name = gets.chomp
store = Store.create(name: store_name)
store.errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 2:"
@store1.employees.create(last_name: "VWX", hourly_rate: 200).errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 3:"
@store1.employees.create(first_name: "VWX", hourly_rate: 200).errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 4:"
@store1.employees.create(first_name: "STU", last_name: "VWX").errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 5:"
@store1.employees.create(first_name: "STU", last_name: "VWX", hourly_rate: 2000).errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 6:"
@store1.employees.create(first_name: "STU", last_name: "VWX", hourly_rate: 20).errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 7:"
Employee.create(first_name: "STU", last_name: "VWX", hourly_rate: 40).errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 8:"
store = Store.create(name: "A", annual_revenue: 20)
store.errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 9:"
store = Store.create(name: "A", annual_revenue: "B")
store.errors.each do |field, error|
  puts "#{field} => #{error}"
end

puts "TEST CASE 10:"
store = Store.create(name: "A", annual_revenue: -2)
store.errors.each do |field, error|
  puts "#{field} => #{error}"
end