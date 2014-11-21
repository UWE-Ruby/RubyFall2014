class PirateTranslator
	def say string
		@message = string
	end

	def translate
		pirate = @message
		pirate.gsub!("Hello", "Ahoy");
		pirate.gsub!("Friend", "Matey");
		pirate << "\n Shiber Me Timbers You Scurvey Dogs!!"
	end
end
