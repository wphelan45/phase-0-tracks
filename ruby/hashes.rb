puts "INTERIOR DESIGNER JOB APPLICATION"

application = {
  :full_name => "Will P",
  :address => "123 Road St.",
  :email => "will@email.com",
  :phone_number => "123-456-7890",
  :fave_shade_of_blue => "Teal",
  :wallpaper => "Paisley, Chevron and Abstract woodsy scenes."
}

p application

puts "Should we hire " + wills_application["Full Name"] + "?"
    hire = gets.chomp

puts "Would you like to add additional information to " + wills_application["Full Name"] + "'s profile?"
    hadd = {
      "add info" => gets.chomp
    }

p application
p hadd