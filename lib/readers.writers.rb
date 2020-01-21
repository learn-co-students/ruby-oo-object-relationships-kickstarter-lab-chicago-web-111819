class Dog

	def bark #class method
		puts "#{@name} says WOOF"
	end

	def initialize(name, breed, owner = nil) #arguments that represent values that must be assigned upon initialization, otherwise object will not be created
		@name = name #instance variables (name, breed, ownder) assigned at 'birth' of each object within this class
		@breed = breed
		@owner = owner #owner will be assigned a value passed to it, otherwise nil (nonexistent) by default
		@time_of_birth = Time.now 
	end

	#instance *variables* are not methods; spot.time_of_birth will return 'undefined method'-- but spot.age is valid because I've written a method for age

	def age #'dynamic reader'; changing value based upon static property
		Time.now - @time_of_birth
	end
	
	def name=(name_arg) #writer/setter; instance method that creates an instance variable that can be called upon anywhere within the app
		@name = name_arg 
	end
	
	def name #reader/getter; method to call to retrieve instance variable
		@name
	end

	#name is method name, whereas @name is an instance variable; technically have nothing to do with each other, but conventionally look alike

	#attr_writer, attr_reader, attr_accessor generate new methods
end