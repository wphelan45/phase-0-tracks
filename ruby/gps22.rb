
# Instructor email: gsperka@gmail.com
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. Define list
  # 2. Create hash to store the list items value = quantity key = item
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add new key, value pair to hash by using the list, key and value pair as parameters
# output: The new list we have create by adding new items

# Method to remove an item from the list
# input: List, key
# steps: Using list, key as a parameter we use a .delete function
# output: New list minus the removed item

# Method to update the quantity of an item
# input: List, key and new integer
# steps: Using list, key and value we will enter a new value using our key
# output: List with updated quantity

# Method to print a list and make it look pretty
# input: List
# steps: Use a loop to dispay a list line by line
# output: Item and quantity

list = "carrots apples cereal pizza"

def grocery_list(s)
	new_array = s.split(" ")
	list = {}
	new_array.each_with_index {|key, value| list[key] = 1}
	
	p list
end
p grocery_list(list)

=begin
  1. Use verbs for method names, it makes the code more readable, Ex. create_grocery_list
  2. Use string in place of s parameter, makes code more readable
  3. Don't use .each_with_index, use  .each_key to target the hash key
  4. Use the list variable at the top for the rest of the assignment. How would you do that?
=end


list = {
  "apple" => 1,
  "banana" => 2
}
def add_item(list, item, quant)
  list[item] = quant
end
p add_item(list, "rice", 6)

=begin
  1. Use the list variable (one before grocery_list) then add new items and quantities. How would you do this?
  2. Get rid of hardcode list (right before add_item)
  3. Maybe use an if else statement or some other way to check the list for an existing item
  4. Make sure that the method is returned and can print
=end

def remove_item(l, item)
  l.delete(item)
end
p remove_item(list, "apple")

=begin
  1. Make sure this returns something
=end

def display_list(l)
  l.each {|value, key| puts "Get: #{key} #{value}" } 
end

p display_list(list)




