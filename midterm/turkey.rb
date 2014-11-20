class Animal
  attr_reader :weight

#should report the turkey weight
  def initialize weight
    @weight = weight
  end

end

#should be a kind of animal
class Turkey < Animal

#should gobble speak: "Gobble Gobble Gobble gobble Gobble. Gobble Gobb'le Gobble Gobble."
  def gobble_speak hello
    hello.gsub!(/\s[A-Z]\s/, " Gobble ");hello.gsub!(/\s[a-z]\s/, " gobble ")
    hello.gsub!(/[A-Z]\w*/,"Gobble")
    hello.gsub!(/\s[A-z]+\S[t]\s/, " Gobb'le ");
end

end
