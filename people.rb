class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
	
	def greeting
		puts "Hi, my name is #{name}!"
	end	
	
end


class Student < Person
	
	def learn
		puts "I get it!"
	end

end


class Instructor < Person

	def teach
		puts "Everything in Ruby is an Object."
	end


end

Chris = Instructor.new("Chris")
Chris.greeting

Christina = Student.new("Christina")
Christina.greeting

Chris.teach
Christina.learn

Christina.teach

#You can't call teach on the Student instance because the student 
#instance doesn't have the method teach. It hasn't inherited it 
#because it Student only inherits from Person.


