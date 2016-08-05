# BEST PRACTICE - to load all gems at the top
require 'pry'
require 'babbler'

class Person
	# attr_reader - creates getter methods
	# attr_writer - creates setter methods
	# attr_accessor - MOST USED - creates getter & setter methods

	# A colon and text is a symbol  :eyeColor

	attr_accessor :name, :age, :gender, :hairColor, :eyeColor
	# initialize gets called everytime Person.new is called
	def initialize(age, name, gender, hairColor, eyeColor)
		@age = age
		@name = name
		@gender = gender
		@hairColor = hairColor
		@eyeColor = eyeColor
	end
	def incrementAge(increment = 1)
	  puts "You've aged a decade." if increment == 10
	  @age += increment
	end

	def info
	  "#{@name} is of age: #{@age}"
	end
end

# person1 = Person.new(21, "Brady Winward", "Male", "Brown", "Hazel")
# puts person1.info
# person_1.incrementAge(9)

# person2 = Person.new(26, "Jake Sorce", "Male", "Brown", "Brown")
# puts person2.info
# person2.incrementAge(10)

# if person2.age >= 35 
# 	puts 'Dave is old'
# end

class Car
	attr_accessor :color, :size, :make, :model, :year
	def initialize
		puts "What is the new cars color?"
		@color = gets.strip
		puts "What is the size of the car?"
		@size = gets.strip
		puts "What is the make?"
		@make = gets.strip
		puts "What is the model?"
		@model = gets.strip
		puts "What is the year?"
		@year = gets.strip
	end

	# Instance Method
	# Needs an instance of a Car - Can.new.info
	# Car.new.color
	def info
	end

	# Class Method
	# Car.noise
	def self.noise
		puts "VROOMMM!"
	end
end

Car.noise
car1 = Car.new
puts car1.color

#car1 = Car.new
#puts car1.color

