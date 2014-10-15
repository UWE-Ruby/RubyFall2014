module SimonSays

    def echo(word)
        word
    end

    def shout(word)
        word.upcase
    end
    
    def repeat(word, count = 2)
        ((word + " ") * count).rstrip
    end
    
    def start_of_word(word, count)
        word[0, count]
    end
    
    def first_word(sentence)
        sentence.split(" ").first
    end

end