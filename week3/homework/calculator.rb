class Calculator

def sum array
  total = 0
  array.each do |value|
    total += value
    end
  total
end

def multiply a,b=nil 
  if b!=nil
    a*b
  else
    begin
    total = 1
    a.each do |value|
      total *= value
      end
    total
    end
  end
end

def pow a,b
  c = a
  (b-1).times {c=c*a}
  c
end

def fac a
  array = (1..a).to_a
  result = 1
  array.each {|value| result *= value}
  result
end

end
