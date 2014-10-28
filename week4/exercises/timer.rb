#until you have a test taht drives you to have an instance you should use module 
#if we wanted the last time it was run, then you'd have a class 

module Timer
  
  def self.time_code n = 1
    start_time = Time.now
    n.times{yield} 
    Time.now - start_time 
  end 

end 
