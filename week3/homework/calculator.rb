
class Calculator

  def sum my_array
    my_array.inject(0) {|sum, i| sum + i }
  end

  def multiply *my_array
    puts my_array.inspect
    my_array.flatten.inject(:*)
  end

  def pow b, p
    b**p
  end

  def fac num
    my_array = 1..num
    my_array.inject(:*)  || 1
  end

end
