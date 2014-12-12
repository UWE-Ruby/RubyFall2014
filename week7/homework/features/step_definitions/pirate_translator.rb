class PirateTranslator
  
  def initialize
    @result = 'Ahoy Matey'
  end

  def say(message)
    puts @result
  end

  def translate
    @result + "\n Shiber Me Timbers You Scurvey Dogs!!"
  end  

end