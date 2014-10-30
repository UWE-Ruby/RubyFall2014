###

module Worker 
	def self.work
		value = yield 
		value
	end
end

## Still working on passing parameter.