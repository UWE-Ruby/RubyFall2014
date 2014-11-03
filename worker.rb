module Worker
	def self.work(default = 1)
		answer = ""
		default.times{answer = yield}
		answer

		# default.times.inject(nil){yield} 
	end
end

