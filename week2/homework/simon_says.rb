module SimonSays
  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  def repeat(string, times=2)
    ((string + ' ')*times).chop
  end

  def start_of_word(string,last)
    string[0...last]
  end

  def first_word(string)
    string.split.first
  end

end
