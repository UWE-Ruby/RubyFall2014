class Calculator 
<<<<<<< HEAD

  def sum input
    if input == []
=======
  attr_accessor :collection, :num
  

  def sum (collection)
    if collection == []
>>>>>>> fbdb37d62bfd89ad8328fe90edf6957bc997e776
      return 0
    else
      total = input.inject(:+)
  end
  total
end
  def multiply *input
    if input.class == String
      return input.to_a.inject(:*)
    else 
      return input.inject(:*)
    
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
