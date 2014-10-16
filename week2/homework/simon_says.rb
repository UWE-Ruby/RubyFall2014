module SimonSays
  def echo(word)
    word
  end

  def shout(word)
    word.upcase
  end

  def repeat(word, number=2)
    space = "#{word} " * number
    space.chop
  end

  def start_of_word(word, number)
    word.slice(0,number)
  end

  def first_word(phrase)
    phrase.split.first
  end
end
