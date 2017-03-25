class TodoList

  #syntax sugar for creating getter methods
  attr_reader :get_item
  
  #syntax suggar for creating setter methods which actually also serve getter purposes
  attr_accessor :add_item, :delete_item
 
 # Initialize a new instance that takes the parameter base_list, which is the list that is mow lawn and clean dishes
  def initialize(base_list)
    @list = base_list
  end
 
 #This method grabs the list items from the instance variable (@list) and returns the base_list
  def get_items
      @list
  end
 
 #This method allows the addition of list items by storing a parameter in the array inside @list instance variable
  def add_item(list_item)
     @list << list_item
  end
 
 #This method alls the deletion of items from the list array
  def delete_item(list_item)
    @list.delete(list_item)
    @list
  end
 
 #This method returns the index of the items in the array
  def get_item(list_item_idx)
    @list[list_item_idx]
  end
end

=begin
p TodoList.new.get_items([@dishes, @lawn])
p test_instance = TodoList.new(["do the dishes", "mow the lawn"])
p test_instance.get_items
p test_instance.add_item("mop")
p test_instance.delete_item("mow the lawn")
p test_instance.get_item(0)
=end