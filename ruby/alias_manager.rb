=begin
# Alias Creator
# 1. create a method that changes a spy's name
      -create an array out of the spy's name, use .to_a
# 2. create a method that swaps the spy's first and last name positions in the array using the .rotate method
# 3. change the vowels to the next vowel in the alphabet using the .chars and .next
# 4. change the name_array to lower case in the 2nd to last line
# 5. create a loop that checks each letter and changes each letter to the next in the alphabet
=end

def change_name(name)
  name = name.downcase
  consonant = "bcdfghjklmnpqrstvwxyz"
  vowel = "aeiou"
  consonant_array = consonant.split(//)
  vowel_array = vowel.split(//)
  name.split(//).each do |letter|
    if vowel.include?(letter)
      if letter == "u"
        puts "a"
      end
      p letter.replace(vowel_array.index.next)
    else
      if letter == "z"
        puts "b"
      end
      p letter.replace(consonant_array.index.next)
    end
  end
end

def save_name(key,value)
  new_name_hash = {}
  new_name_hash.store(key,value)
end

puts "What name would you like to change?" #-> Put this code last.
  name = gets.chomp

p change_name(name)
p save_name(change_name(name),name)

