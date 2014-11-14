class EvenNumber
  attr_accessor :x

  def EvenNumber.new(x)
    return true if x.even?
  end

  def EvenNumber.increment(x)
    (x).map{|x| x + 2}
  end

  def EvenNumber.comparison(x,y)
    x <=> y
  end

end
