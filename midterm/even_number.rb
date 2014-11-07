

class EvenNumber
  include Comparable 
  attr_reader :value 

  def initialize(value) 
    @value = value
    raise "Even numbers only" unless @value%2==0
  end

  def succ
    EvenNumber.new(@value+2) 
  end

  def <=>(other_even_number) 
    value <=> other_even_number.value 
  end 

end