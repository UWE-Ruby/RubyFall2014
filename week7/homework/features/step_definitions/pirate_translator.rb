class PirateTranslator
  attr_accessor :phrase

  def say phrase
    @phrase = phrase
  end

  def translate 
    @phrase.sub!('Hello', 'Ahoy')
    @phrase.sub!('Friend', 'Matey')
    @phrase << "\n Shiber Me Timbers You Scurvey Dogs!!"
    @phrase
  end
end