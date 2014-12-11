class PirateTranslator
	DICTIONARY = {"Hello Friend" => "Ahoy Matey"}

	def say(str)
		@phrase = str
		DICTIONARY[@phrase]
	end

	def translate
		say(@phrase) + "\n Shiber Me Timbers You Scurvey Dogs!!"
	end
end
