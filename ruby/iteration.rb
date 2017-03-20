cats = ["Fluffy", "Bob", "Kitty", "Joe"]

cats.each { |i| "This is my cat #{i}" }

environments = ["Mountains", "Grassland", "River", "City"]

#Iterate using .each on environments
environments.map! do |name| 
	puts name
	name.length
end 
p environments
#p letter_count

fluffy = {
	"name" => "Fluffy", 
	"age" => "2", 
	"color" => "Brown"
	}
	bob = {
		"name" => "Bob", 
		"age" => "3", 
		"color" => "Blue"
		}
	kitty = {
		"name" => "Kitty",
		"age" => "6", 
		"color" => "yellow"
		}
	joe = {
		"name" => "Joe",
		"age" => "10",
		"color" => "Red"
	}

p fluffy["color"]

cat_age = {Frank: 10, Betty: 13, Johny: 4, Ginna: 5, Garry: 10, Donna: 15, Boggie: 6, Steph: 9, Carla: 10, Heather: 11, Norm: 11}

count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#1.
#array
count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count.map {|x| count.delete(5)}

#hash
cat_age = {Frank: 10, Betty: 13, Johny: 4, Ginna: 5, Garry: 10, Donna: 15, Boggie: 6, Steph: 9, Carla: 10, Heather: 11, Norm: 11}
young_cat = cat_age.map do |cat_name, age|
  cat_age.delete_if { |cat_name, age| age > 5 }
end
p young_cat

#2.
#array
count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count.reject { |i| i < 5}

#hash
cat_age = {Frank: 10, Betty: 13, Johny: 4, Ginna: 5, Garry: 10, Donna: 15, Boggie: 6, Steph: 9, Carla: 10, Heather: 11, Norm: 11}
young_cat = cat_age.each do |cat_name, age|
  cat_age.delete_if { |cat_name, age| age < 10 }
end
p young_cat

#3.
#array
count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count.keep_if { |x| x > 8 }

#hash
cat_age = {Frank: 10, Betty: 13, Johny: 4, Ginna: 5, Garry: 10, Donna: 15, Boggie: 6, Steph: 9, Carla: 10, Heather: 11, Norm: 11}
young_cat = cat_age.each do |cat_name, age|
  cat_age.keep_if { |cat_name, age| age < 10 }
end
p young_cat

#4.
#array
count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
count.delete_if { |x| x > 8 }

#hash
cat_age = {Frank: 10, Betty: 13, Johny: 4, Ginna: 5, Garry: 10, Donna: 15, Boggie: 6, Steph: 9, Carla: 10, Heather: 11, Norm: 11}
stop_at_first = cat_age.each do |cat_name, age|
  cat_age.delete_if { |cat_name, age| age < 10 }
end
p stop_at_first
