=begin
1. Require gems
	-which are necessary?
2. Create a SQL database
	-what will the database store?
3. Create a user interface for data entry
	-what are the prompts and what data needs to be stored in the database?
4. Create a test list
	-what error messages are ou dealing with?
	-what are the small steps to solve each problem? (Pseudocode problem and solutions)	
5. 
=end

#Require gems
#maybe use another file for the just the methods?

#Create SQL database
db = SQLite3::Database.new("grocery_list.db")

def start_db
	db = SQLite3::Database.new("grocery_list.db")

	create_grocery_table = <<-SQL
		CREATE TABLE IF NOT EXISTS groceries(
			id INTEGER PRIMARY KEY,
			item VARCHAR(255),
			quantity INT,
			customer_id INT,
			FOREIGN KEY (customer_id) REFERENCES customer_delivery_info(id)
		)
	SQL

	customer_info_table = <<-SQL
		CREATE TABLE IF NOT EXISTS customer_delivery_info(
			id INTEGER PRIMARY KEY,
			name VARCHAR(255),
			address VARCHAR(255),
			delivery_day VARCHAR(255)
		)
	SQL

	db.execute(create_grocery_table)
	db.execute(customer_info_table)
end

#Test row insert
#db.execute("INSERT INTO groceries (item, quantity, customer_id) VALUES ('Carrots', 4, 1)")

#db.execute("INSERT INTO customer_delivery_info(name, address, delivery_day, delivery_status) VALUES ('Mary Lou', '123 Avenue Rd Chicago, IL', 'Monday', 'false')")

#Add a method to insert new rows
def create_grocery_list(db, item, quantity, customer_id)
	db.execute("INSERT INTO groceries(item, quantity, customer_id) VALUES (?, ?, ?)", [item, quantity, customer_id])
end

#Couldn't get this method to work
def add_customer(db, name, address, delivery_day)
	db.execute("INSERT INTO customer_delivery_info(name, address, delivery_day, delivery_status) VALUES (?, ?, ?)", [name, address, delivery_day])
end

def check_name(db, name)
	customer_list.each do |n|
		if name == n
			puts "Hi #{name}"
		else
			puts "Invalid name. Try again."
		end
	end
end

def check_address(db, address)
	customer_list.each do |a|
		if address == a
			puts "Identity confirmed. What groceries do you need?"
		else
			puts "Invalid name. Try again."
		end
	end
end

#Display databases
=begin
grocery_list = db.execute("SELECT * FROM groceries")
grocery_list.each do |item|
	puts "#{item}"
end
=end

=begin
customer_list = db.execute("SELECT * FROM customer_delivery_info")
customer_list.each do |customer|
	puts "#{customer}"
end
=end