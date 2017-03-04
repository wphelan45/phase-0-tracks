class TodoList

	def initialize
		@dishes = "do the dishes" 
		@lawn = "mow the lawn"
	end

	def get_items(array)
		list_array = [@dishes, @lawn]
	end

	#def add_item(string)
	#	@list << string
	#end
end

#p TodoList.new.get_items([@dishes, @lawn])