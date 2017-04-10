require 'sqlite3'
require_relative 'grocery_delivery'

db = start_db

puts "Hi! Are you a member of The Grocery Delivery Service? (Enter: yes or no)"
	answer = gets.chomp.downcase

while answer != "yes" && answer != "no"
	puts "Are you a member of The Grocery Delivery Service? (Enter: yes or no)"
	answer = gets.chomp.downcase
end

if answer == "no"
	puts "Enter your name:"
		name = gets.chomp
	puts "Enter your address:"
		address = gets.chomp
	puts "What day do you want your groceries delivered?"
		delivery_day = gets.chomp
	add_customer(db, name, address, delivery_day)
else
	puts "If you want to exit the program type 'exit'."
	puts "What is your name?"
		name = gets.chomp
	check_name(db, name)

	puts "What is your address?"
		address = gets.chomp
	check_address(db, address)

	if name == "exit" || address == "exit"
		puts "You are logged out."
	end
end


