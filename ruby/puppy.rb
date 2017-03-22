=begin
Puppy Class
Characteristics:
1. Breed: Yellow lab
2. Sex: Male
3. Sheds: Yes
4. Name: Fido
5. Fur: Straight, yellow

Behavior:
1. Friendly
2. Outdoor dog
3. Plays fetch
=end

class Puppy
	
end

fido = Puppy.new
dutchess = Puppy.new
spot = Puppy.new

#Puppy.methods
p spot
p dutchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
#spot.play_dead



str = String.new
p str.length
p str.empty?
str += "huh."
str = "some string"
greeting = String.new("hello")
p greeting.length
p greeting.upcase
