class Customer 
	def initialize(first_name, last_name) 
		@first_name = first_name
		@last_name = last_name
	end 
	def append_name_to_file(file) 
		file << @first_name << " " << @last_name 
	end 
end 

#now you can test this not by creating a file and having to delete it, but you can use a string or an array 

require 'test/unit' 
require_relative 'addcust' 

class TestAddCustomer < Test::Unit::TestCase 
	def test_add 
		c = Customer.new("Ima", "Customer") 
		f = [] 
		c.append_name_to_file(f) 
		assewrt_equal(["Ima", " " , "Customer"], f) 
	end
end 
