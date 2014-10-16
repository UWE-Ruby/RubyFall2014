
module SimonSays 

  def echo(msg)
    msg
  end

  def hello 
    puts "Hello" 
  end 

  def shout(msg)
    msg.upcase
  end

  def repeat(msg, count=2)
    str = ""
    count.times do
      str += "#{msg} "
    end
    str.strip

    #another way to solve this 
    str = []
    count.times do 
      str.push(msg)
    end
    str.join(" ")
  end

  def start_of_word(word, length)
    word[0, length]
  end

  def first_word(phrase)
    phrase.split(' ')[0]
  end 


end 

