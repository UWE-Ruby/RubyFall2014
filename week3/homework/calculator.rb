class Calculator

 def sum(numbers=[])
     @calculator = numbers.inject(0, :+)
 end

 def multiply(a, b=1)
   if a.is_a?(Array)
     @calculator = a[0]*a[1]
   else
     @calculator = a*b
   end
 end

 def pow(a,b)
   puts "a: #{a} b: #{b}"
   @calculator = b.times do (a*a)
     puts "ia: #{a} ib: #{b}"
     end
 end

 def fac(number)
   if (number == 0)
     number +=1
   end
   @calculator = (1..number).inject(&:*)
   
 end
 
end
 
