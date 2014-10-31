class OddNumber
  include Comparable
  attr_reader :value

  def initialize value
    @value = value
  end

  def succ
    OddNumber.new(@value + 2)
  end

  def <=> other_odd_number
    value <=> other_odd_number.value
  end

end