require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Guess", last_name: "Name", hourly_rate: 60)
@store1.employees.create(first_name: "Crush", last_name: "It", hourly_rate: 50)
@store1.employees.create(first_name: "Employ", last_name: "Me", hourly_rate: 70)
@store2.employees.create(first_name: "ABC", last_name: "DEF", hourly_rate: 60)
@store2.employees.create(first_name: "GHI", last_name: "JKL", hourly_rate: 50)
@store2.employees.create(first_name: "MNO", last_name: "PQR", hourly_rate: 60)
