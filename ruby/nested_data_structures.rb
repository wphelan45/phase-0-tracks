zoo = {
	tiger_exhibit: {
	  names: {
		  sheer_khan: "Sheer Khan",
		  ghost: "Ghost"
	  },
		capacity: {
			exhibit_capacity: 3,
			current_capacity: 2
		},
		diet: [
			"Any meat."
		]
	},
	lion_exhibit: {
	  names: {
	    adults: [
		    nala: "Nala",
		    simba: "Simba"
		  ],
		  cubs: [
			  mufasa: "Mufasa",
			  mika: "Mika",
			  cecil: "Cecil"
	    	]
	  },
		capacity: {
			exhibit_capacity: 5,
			current_capacity: 5
		},
		meals: [
			"Zebra, cow, goat, and wildebeast."
		]
	},
	gorilla_exhibit: {
	  names: {
		  harambe: "Harambe",
		  tarzan: "Tarzan",
		  jane: "Jane",
		  mogli: "Mogli"
	 },
		capacity: {
			exhibit_capacity: 7,
			current_capacity: 4
		},
		meals: [
			"Assorted greens"
		]
	}
}

p zoo[:tiger_exhibit][:names][:sheer_khan]
p zoo[:lion_exhibit][:names][:cubs].push(nero: "Nero")
p zoo[:lion_exhibit][:names][:cubs]
p zoo[:gorilla_exhibit][:names][:harambe].reverse
p zoo[:gorilla_exhibit][:capacity][:exhibit_capacity]