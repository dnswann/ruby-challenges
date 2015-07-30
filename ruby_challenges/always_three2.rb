puts "Give me a number"
number_one = gets.to_i
last_number = number_one
last_number += 5
last_number *= 2
last_number -= 4
last_number /= 2
last_number -= number_one 
puts "The number will always be #{last_number}!"
