class Santa
  attr_reader :ethnicity
  attr_accessor :gender
  
	def initialize
		puts "Initializing Santa instance ..."
	end
	  
	def gender
	    @gender = example_genders
	end
	  
	def ethnicity
	    @ethnicity = example_ethnicity
	end
  
	def speak
	 	p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(c)
		p "That was a good #{c} cookie!"
	end
	
	def age(a)
		@age = a
		if @age <= 0
	    	puts @age = "0"
		else
			puts "Santa #{@name} is #{@age}!"
		end
	end
	
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance ..."
    	@name = name
    	@gender = gender
    	@ethnicity = ethnicity
	end
	
	def reindeer_rank
	    @rd_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	    puts @rd_rank
	end
	
	def celebrate_birthday
	    @age += 1
	    puts "Congratulations! Santa #{@name} is now #{@age}."
  	end
  
  	def get_mad_at(name)
  		@rd_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  		@rd_rank.delete(name)
  		p @rd_rank.push(name)
  	end
end

santa = Santa.new("Smith", "asexual", "Hispanic")
santa.speak
santa.eat_milk_and_cookies("chocolate")
santa.age(40)
santa.celebrate_birthday
p santa.reindeer_rank
santa.gender = "Female"
santa.get_mad_at("Rudolph")

santa = Santa.new("Locke", "female", "Black")
santa.speak
santa.eat_milk_and_cookies("chocolate")
santa.age(50)
santa.celebrate_birthday
santa.get_mad_at("Dasher")

new_santa = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["White,", "Black", "Asian", "Indian", "Native American", "N/A"]

#p Santa.new

50.times do 
  new_santa << Santa.new
end

p new_santa

new_santa.each {|e| p example_ethnicities.sample }

new_santa.each {|g| p example_genders.sample }