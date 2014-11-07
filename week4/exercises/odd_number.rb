class OddNumber 

  include Comparable 
  attr_reader :value

  #create odd number and initialize it with value 
  def initialize value 
    @value = value 
  end 

  #when i have an instance, i get back a successor of this odd number (next one)
  def succ 
    OddNumber.new(@value + 2) 
  end 

  def <=> other_odd_number 
    value <=> other_odd_number.value 
  end
   
end 