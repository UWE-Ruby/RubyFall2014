module SimonSays

def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s,num=2)
  s += ' '
  (s * num).strip 
end

def start_of_word(s,num)
  s[0...num]
end

def first_word(s)
  s.split(" ")[0]
end

end
