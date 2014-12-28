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
    
    def multiply *args
        if args[0].class == Array
            multiplyArray args[0]
        else
            multiplyArray args
        end
    end

    def multiplyArray array
        m = 1
        array.each do |value|
            m *= value
        end
        m
    end

    def multiply_Alternative *args
        if args[0].class == Array
            array = args[0]
        else
            array = args
        end
        m = 1
        array.each do |value|
            m *= value
        end
        m
    end

    def multiply_Alternative2 numOrArray, num = 0
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
