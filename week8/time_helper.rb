# class Time
# 	def before? other_time
# 		self < other_time
# 	end
# end


module TimeHelper
	refine Time do
		def before? other_time
			self < other_time
		end
	end
end