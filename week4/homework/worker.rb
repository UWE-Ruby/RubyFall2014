
#module Greet
#	def work 
#  		puts "hello"
#	end
#end

#class Worker
#	include Greet
# 	def work input
# 		puts input
#	end
#end

#Worker_obj = Worker.new  
#Worker_obj.work("Hello")
#module Worker
#	def work
#		puts "Hello122"
#	end
#end
#Worker.work



#module Worker

#def self.work x=1
#  output = ""
#  x.times {output = yield}
#  output
#end

#end

module Worker 
	def self.work x=1
		value = ''
		x.times { value = yield }
		value
	end
end