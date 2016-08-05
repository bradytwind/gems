# base class
class Mammal
	attr_accessor :eyeColor, :alive, :gender
	# default params must come LAST
	# all required params must come BEFORE!

	def initialize(eyeColor, alive, gender = true)
		@eyeColor = eyeColor
		@gender = gender
		@alive = alive
	end

  def speak
  	raise "Implement this in the sub classes"
  end
end


# sub class
class Cat < Mammal
	attr_accessor :furColor
	def initialize(eyeColor, furColor, gender, alive = true)
		@furColor = furColor
		super(eyeColor, gender, alive)
	end

	def speak
		puts "MEOW!"
	end
end


# sub class
class Human < Mammal
	attr_accessor :hairColor
	def initialize(eyeColor, hairColor, gender, alive = true)
		@hairColor = hairColor
		super(eyeColor, gender, alive)
	end

	def speak
		puts "Oh, Hello!"
	end
end

# sub class
class Dog < Mammal
	attr_accessor :furColor
	def initialize(eyeColor, furColor, gender, alive = true)
		@furColor = furColor
		super(eyeColor, gender, alive)
	end

	def speak
		puts "WOOF!"
	end
end

# No need to implement the Mammal class in real code
#mammal = Mammal.new('Brown','Male')
#mammal.speak

human = Human.new('Brown', 'Brown', 'Male')
human.speak

cat = Cat.new('Blue', 'Grey', 'Male')
cat.speak

dog = Dog.new('Green', 'Black', 'Female')
dog.speak