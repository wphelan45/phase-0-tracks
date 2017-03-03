class Santa
	def speak
	 	p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(c)
		p "That was a good #{c} cookie!"
	end

	def initialize(g, e)
		@gender = ["Male", "Female", "Agender", "N/A"]
		@ethnicity = ["White,", "Black", "Asian", "Indian", "Native American", "N/A"]
		p "Initializing Santa instance ..."
	end
	
	def about(a)
	  @age =
	    counter = 0
	    if a == counter
	      puts a 
	    else
	      puts "Santa's age is #{a}"
	    end
	  @rd_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
end

santa = Santa.new("Male", "Asian")
santa.speak
santa.eat_milk_and_cookies("chocolate")
p santa.about(5)


santa_array = []

