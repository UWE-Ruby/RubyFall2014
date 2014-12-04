module Convert
# Overveiw
# F2C converts Fahrenheit to Celsius and vice versa
# Fahrenheit to Celsius formulas http://www.manuelsweb.com/temp.htm
# 
# How to use it
# gem install F2C
# launch irb 
# require 'F2C'
# Convert.F2C(value) - "converts Fahrenheit to Celsius"
# Convert.C2F(value) - "converts Celsius to Fahrenheit"
  
  def self.F2C value
    converted_value = ((value - 32) * 5.0/9.0).round
  	return "#{value} Fahrenheit is #{converted_value} Celsius"
  end

  def self.C2F value
  	converted_value = ((value * 9.0/5.0) + 32).round
  	return "#{value} Celsius is #{converted_value} Fahrenheit"
  end

end

