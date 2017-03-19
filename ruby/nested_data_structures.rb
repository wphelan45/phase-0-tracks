zoo = {
	tiger_exhibit: {
	  	names: {
		  	sk: "Sheer Khan",
		  	g: "Ghost"
	  },
		capacity: {
			exhibit_capacity: 3,
			current_capacity: 2
		},
		diet: ["Any meat."]
	},
	lion_exhibit: {
	  	names: {
	    	adults: ["Nala", "Simba"],
			cubs: ["Mufasa", "Mika", "Cecil"]
	  },
		capacity: {
			exhibit_capacity: 5,
			current_capacity: 5
		},
		meals: ["Zebra", "Cow", "Goat", "Wildebeast"]
	},
	gorilla_exhibit: {
	 	names: ["Harambe", "Tarzan", "Jane", "Mogli"],
		capacity: {
			exhibit_capacity: 7,
			current_capacity: 4
		},
		meals: ["Assorted greens"]
	}
}

p zoo[:tiger_exhibit][:names][:sk]
zoo[:lion_exhibit][:names][:cubs].push("Nero")
p zoo[:lion_exhibit][:names][:cubs]
p zoo[:lion_exhibit][:meals].shuffle
p zoo[:gorilla_exhibit][:capacity][:exhibit_capacity]
zoo[:lion_exhibit][:names][:cubs].delete("Cecil")
p zoo[:lion_exhibit][:names][:cubs]
p zoo[:lion_exhibit][:names][:adults][1]



