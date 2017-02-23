puts "INTERIOR DESIGNER JOB APPLICATION"

wills_application = {
  "Full Name" => "Will P",
  "Address" => "123 Road St.",
  "Email" => "will@email.com",
  "Phone Number" => "123-456-7890",
  "Fave shade of blue" => "Teal",
  "Wallpaper" => "Paisley, Chevron and Abstract woodsy scenes."
}

p wills_application

puts "Should we hire " + wills_application["Full Name"] + "?"
    hire = gets.chomp
puts "Would you like to add additional information to " + wills_application["Full Name"] + "'s profile?"
    hadd = {
      "add info" => gets.chomp
    }
p wills_application
p hadd