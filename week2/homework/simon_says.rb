module SimonSays

  def echo input
    input
  end

  def shout input
    input.upcase!
  end

  def repeat(input, n = 2)
    with_white_space = input + " "
    repeated_input = with_white_space * n
    repeated_input.chop
    ("#{input} " * n).chop
  end

  def start_of_word input, i
    input[0,i]
    input[0...i]
    input.slice(0,i)
    input.slice(0...i)
  end

  def first_word input
    input.split[0]
    input.split.first
  end
end