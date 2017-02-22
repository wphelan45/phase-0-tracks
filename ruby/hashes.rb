puts "INTERIOR DESIGNER JOB APPLICATION"

puts "Full Name:"
	name = gets.chomp

puts "Address:"
	address = gets.chomp

puts "Email:"
	email = gets.chomp

puts "Phone Number:"
	phone = gets.chomp

puts "Fave shade of blue:"
	shade = gets.chomp

puts "What are your wallpaper preferences from our catalog?"
puts "Your choices are : Paisley, Chevrons, Photorealistic woodsy scenes with squirrels or without squirrels, and Abstract woodsy scenes (no squirrels). Enter all that apply. Type "done" when finished."
	wallpaper = gets.chomp
	until wallpaper == "Done"
		wallpaper = gets.chomp
		if wallpaper != "Paisley" or "Chevrons" or "Photorealistic woodsy scenes with squirrels" or "Photorealistic woodsy scenes without squirrels" or "Abstract woodsy scenes (no squirrels)"
			puts "Sorry we don't carry that wallpaper. Your choices are : Paisley, Chevrons, Photorealistic woodsy scenes with squirrels or without squirrels, and Abstract woodsy scenes (no squirrels). Enter all that apply. Type "done" when finished."
		end
	end

p name
p address
p email
p phone
p shade
p wallpaper