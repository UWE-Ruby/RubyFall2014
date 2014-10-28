module Worker

    def self.work *args
    	if args[0] == nil
    		yield
    	else 
    		yield
    		yield
    		yield
    	end		
	end

end