class Calculator
#sum of an array
  def sum array
    array.inject(0){|sum, n| sum +n}
  end

#multiply an array of number
  def multiply *array
    puts array.inspect
    array.flatten.inject(:*)
  end

#raises one number to the power of another number
  def pow base, p
    base ** p
  end

#factorial of a number
  def fac n
    array = 1..n
    array.inject(:*) || 1
  end
end
