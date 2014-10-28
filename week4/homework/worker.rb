module Worker

	def self.work loop=1, &block
		loop.times do
			@result = block.call
		end
		@result
	end 

end

