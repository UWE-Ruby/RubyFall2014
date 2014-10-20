# encoding : utf-8
# Homework Number Three -- UW Ruby Class

class Calculator

  def sum(input_array)
	input_array.inject(0, :+)
  end

  def multiply(arg_1, arg_2 = 0)
  	if (arg_1.is_a?(Integer))
  		arg_1 * arg_2
  	elsif (arg_1.is_a?(Array))
  		arg_1.inject(:*)
  	end	
  	
  end

  def pow(number_1, number_2)
  	number_1 ** number_2
  end

  def fac(n)
  	(1..n).inject(1, :*)
  end

  
end