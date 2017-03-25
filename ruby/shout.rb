=begin 
6.4 Release 1
1. Writing a simple module called shout
2. Declare the module here is the basic syntax:
	module Shout
		insert methods here
	end
3. Run the code in IRB using: require_relative 'shout'
4. Add a method for yelling angrily (code already exists in assignment 6.4)
5. Add a method for yelling happily
6. Run with driver code
=end

module Shout
	def self.yell_angrily(words)
		words + "!!! :("
	end

	def self.yell_happily(string)
		string + "! :)"
	end
end

p Shout.yell_angrily("Get over here")
p Shout.yell_happily("Welcome back")


module Shout
	def yell(words)
		words + "!!!"
	end
end

class Happy
	include Shout
end

class Angry
	include Shout
end

happy = Happy.new
angry = Angry.new

p happy.yell("Good dog")
p happy.yell("Congratulations")
p angry.yell("Bad dog")
p angry.yell("Get over here")











