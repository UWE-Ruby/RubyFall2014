
class Calculator 

  def sum(arr) 
    arr.inject(0) {|sum, n| sum + n}
  end 

  def multiply(*arr)
    arr.flatten.inject {|product, n| product * n}
  end 

  def pow (base, power)
    #take variable 1 and raise it to power of variable 2 
    base**power
  end

  def fac(val)
    #array = each item times all the previous items 
    total = 1
    val.downto(1) { |n| total *= n }
    total
  end

end 