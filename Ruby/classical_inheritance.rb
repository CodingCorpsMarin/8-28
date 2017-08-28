module Super_Powers
  
	def laser_vision
		'pewpewpew! lazerbeemz!'
	end

	def atomic_fart
		'BRRRRAAPPP'
	end
	
end

class Animal

	attr_accessor :name, :num_legs, :warm_blooded

	def initialize(name, num_legs, warm_blooded)
		@name = name
		@num_legs = num_legs
		@warm_blooded = warm_blooded
	end

end

class Mammal < Animal

	attr_accessor :fur, :milk

	def initialize(name, num_legs, warm_blooded, fur, milk)
		super(name, num_legs, warm_blooded)
		@fur = fur
		@milk = milk
	end	
	
end

class Amphibian < Animal

	attr_accessor :color

	def initialize(name, num_legs, warm_blooded, color)
		super(name, num_legs, warm_blooded)
		@color = color
	end
		
end

class Primate < Mammal
  include Super_Powers 
	attr_accessor :tail, :feethands

	def initialize(name, num_legs, warm_blooded, fur, milk, tail, feethands)
		super(name, num_legs, warm_blooded, fur, milk)
		@tail = tail
		@feethands = feethands
	end
	
end

class Frog < Amphibian

		attr_accessor :webbed_feet

		def initialize(name, num_legs, warm_blooded, color, webbed_feet)
			@webbed_feet = webbed_feet
		end
	
end

class Bat < Mammal

	attr_accessor :habitat

	def initialize(name, num_legs, warm_blooded, fur, milk, habitat)
		super(name, num_legs, warm_blooded, fur, milk)
		@habitat = habitat
	end

end

class Chimpanzee < Primate

	attr_accessor :tools

	def initialize(name, num_legs, warm_blooded, fur, milk, tail, feethands, tools)
		super(name, num_legs, warm_blooded, fur, milk, tail, feethands)
		@tools = tools
	end

end

tiger = Animal.new(name = 'Hobbes', num_legs = 4, warm_blooded = true)

wolf = Mammal.new(name = 'Bob', num_legs = 4, warm_blooded = true, fur = "coarse", milk = 'delicious')

monkey = Primate.new(name = 'Abu', num_legs = 2, warm_blooded = true, fur = 'fine', milk = 'salty', tail = true, feethands = 2)

monkey.atomic_fart
monkey.laser_vision
