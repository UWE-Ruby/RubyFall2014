class SimonSays
  def echo answer
    puts answer
  end
  def shout phrase
    puts phrase.upcase
    end
  def repeat (text, num)
    if num == nil 
      num = 1
      num.times do
        puts text
      end
    else
      num.times do 
        puts text
      end 
    end
  end
   def start_of_word(text, num)
     index = num - 1
     puts text[0..index]

   end 
   def first_word(text)
     puts text.split(' ').first
   end   
end
