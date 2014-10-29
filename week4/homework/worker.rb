class Worker
  
  def self.work( num = 1 )
    if num == 1
      yield
    else
      num.times.inject(5, :+)
    end
   
  end

  
end
