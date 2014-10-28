module Worker

	def self.work t = 1
		result = nil
		t.times do 
			result = yield
		end
		result
	end

end