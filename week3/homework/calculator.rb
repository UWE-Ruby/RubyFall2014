class Calculator 
  attr_accessor :collection, :num
  
  #def initialize
   # @calculator = calculator 
  #end
  def sum (collection)
    if collection == []
      return 0
    else
      return collection.inject(:+)
  end
  def multiply (collection, *arg)
    if collection.class == String
      return collection.to_a.inject(:*)
    else 
      return collection.inject(:*)
    
   end
   
   def pow (collection, num)
     b = 1
     num.times{b *= collection}
 end 
    def fac (num)
      if num == 0
        return 1
      else
        array = (1..num).to_a
        return array.inject(:*)
    end 
 end
 end
 end
 end
