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
	Puppy.methods
end

fido = Puppy.new
dutchess = Puppy.new
spot = Puppy.new

spot.class
dutchess == fido
fido.instance_of?(Array)
fido.instance_of?(Puppy)
#spot.play_dead

=begin
str = String.new
str.length
str.empty?
str += "huh."
str = "some string"
greeting = String.new("hello")
greeting.length
greeting.upcase
=end