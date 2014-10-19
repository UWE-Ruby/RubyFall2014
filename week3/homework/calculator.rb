class Calculator

    def pow power, number
        p = 1
        number.times { p *= power }
        p
    end
    
    def sum array
        s = 0
        array.each do |value|
            s += value
        end
        s
    end
    
    def multiply numOrArray, num = 0
        m = 1
        if numOrArray.class == Array
            numOrArray.each do |value|
                m *= value
            end
        else
            m = numOrArray * num
        end
        m
    end
    
    def fac n
        f = 1
        (1..n).each do |a|
            f *= a
        end
        f
    end
end
