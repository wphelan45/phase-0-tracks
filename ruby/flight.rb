=begin 
6.4 Release 2
1. Declare classes for a bird and plane
2. Then, write a flight module that takes off (Needs to be above the class declarations, don't need self keyword either)
3. Add the module to the bird and plane classes
4. Create a new instance of the bird and plane classes
=end

module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} ..."
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
plane = Plane.new

p bird.take_off(300)
p plane.take_off(20000)