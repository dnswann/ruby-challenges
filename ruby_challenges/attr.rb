class Media
	def initialize(name)
		@name = name
	end

	def books
		puts "I've written books."
	end

	def display 
		puts "Hey, my name is #{@name} and I'm a writer."
	end
	
end

class Authors < Media

	attr_writer :publication_date
	attr_reader :publication_date

	attr_accessor :appearances_date
	
end

durrow = Authors.new ("Heidi")
durrow.books
durrow.display



#attr_writer :name, :owner_name (sets name & adds multiples)
#attr_reader :name (gets name)
#change the method names later 
#attr_accessor :name 