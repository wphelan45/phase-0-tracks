=begin
# Alias Creator
# 1. create a method that changes a spy's name
# 2. create a method that swaps the spy's first and last name positions in an array using the .shuffle method
# 3. change the vowels to the next vowel in the alphabet using the .chars and .next 
# 4. change the name_array to lower case in the 2nd to last line
# 5. create a loop that checks each letter and changes each letter to the next in the alphabet

def alias_creator(f, l)
	counter = 0
	name_array = [f, l]
	swap = name_array.shuffle
	vowels = %w(a e i o u)
rotated_vowels = vowels.rotate 1
def vowel_adv(str)
  str.
    chars.
    map do |char|
      index = vowels.index char
      if index
        rotated_vowels[index]
      else
        char
      end
    end.
    join
end
	while counter == (f.chars) and (l.chars)
	  if f.index <= counter
	   f.chars[0 + counter]
	   f.chars.next
	  elsif l.index <= counter
	   f.chars[0 + counter]
	   f.chars.next
	  end
	  counter += 1
  end
  name_array.downcase
end

p alias_creator("Will", "Phelan")
=end

#puts "What name would you like to change?" -> Put this code last.
#name = gets.chomp
def change_name(name)
  name_array = name.chars
  p name_array
  counter = 0
  until counter == (name_array.count - 1)
    if counter < name_array.length
      name_array[0 + counter]
      puts name_array.rotate
    else
      puts "Are you finished?"
      finished = gets.chomp
        if finished = "yes" or "Yes"
          puts "Logged out"
        else
          puts "Enter another name:"
        end
    end
    counter += 1 
  end
  p name.downcase

  def save_name(n)
    save_array = [n1, n2]
    counter = 0
    while counter < (n - 2)
      save_array.push(array[0 + counter] + save_array[1 + counter])
      counter += 1
    end
    array
  end
end