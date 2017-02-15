puts "How many employees will you be entering today?"
  employees = gets.chomp
  
while employees.to_i != 0
  puts employees.to_i
  
puts "What is your name?"
  name = gets.chomp
  
puts "Year of your last birthday:"
  current_year = gets.chomp

puts "How old are you?"
  year = gets.chomp

puts "What year were you born?"
  born = gets.chomp

puts "Do you like garlic bread? (yes/no)"
  like = gets.chomp
  
puts "Would you like to enroll in the company health insurance? (yes/no/waive)"
  enroll = gets.chomp

if (name != "Drake Cula") || (name != "Tu Fang") && (year.to_i < 101) && (current_year.to_i == (born.to_i + year.to_i)) && (like == "yes") && (enroll == "yes")
  p "Definently not a vampire."

elsif (name != "Drake Cula") || (name != "Tu Fang") && (year.to_i < 101) && (current_year.to_i == (born.to_i + year.to_i)) && (like == "no") && (enroll == "waive")
  p "Probably a vampire."
  
elsif (name != "Drake Cula") || (name != "Tu Fang") && (year.to_i < 101) && (current_year.to_i == (born.to_i + year.to_i)) && (like == "no") && (enroll == "no")
  p "Almost certainly a vampire."

elsif name == "Drake Cula" or "Tu Fang"
  p "Denfinitely a vampire."
  
else 
  p "Results inconclusive."
end
puts "What allergies does " + name + " have? Enter done when finished."
    allergies = gets.chomp
    
while allergies != "done" or "sunshine"
  if allergies == "sunshine"
    puts "Probably a vampire."
  else  
    puts "What other allergies does " + name + " have? Enter done when finished."
    allergies = gets.chomp
  end
end

p employees
p name
p current_year
p year
p born
p like
p enroll

end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."