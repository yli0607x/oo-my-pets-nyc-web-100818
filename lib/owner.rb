class Owner

	@@all = []

	attr_accessor :name, :pets
	attr_reader :species


	def initialize(species)
		@species = species
		@@all << self
		@pets = {:fishes => [], :dogs => [], :cats => []}
		
	end

	def self.all 
		@@all
	end

	def self.count
		@@all.size
 	end 

 	def self.reset_all
 		@@all.clear
 	end

 	def say_species
 		"I am a #{self.species}."
 	end

 	def buy_fish(fishname)
 		name = Fish.new(fishname)
 		@pets[:fishes] << name
 	end

 	def buy_cat(catname)
 		name = Cat.new(catname)
 		@pets[:cats] << name
 	end

 	def buy_dog(dogname)
 		name = Dog.new(dogname)
 		@pets[:dogs] << name
 	end

 	def walk_dogs
 		@pets[:dogs].each do |dog|
 			dog.mood = "happy"
 		end
 	end

 	def play_with_cats
 		@pets[:cats].each do |cat|
 			cat.mood = "happy"
 		end
 	end

 	def feed_fish
 		@pets[:fishes].each do |fish|
 			fish.mood = "happy"
 		end
 	end

 	def sell_pets
 		@pets.each do |type, pets|
 			pets.each do |pet|
 				pet.mood = "nervous"
 			end
 		end
 		pets.clear
 	end

 	def list_pets
 		"I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
 	end

end