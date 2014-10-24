class Calculator

  def sum input
    input.inject(0, :+)
  end

  def multiply *input
    input.flatten.inject(1, :*)
  end

  def pow base, exp
    base ** exp
    #multiply Array.new(exp, base)
    exp.times.inject(1){|product| product * base}
  end

# 6 #fac(3)
# n = 3
# 3 * 2 #fac(3-1)
# n=2
# 2 * 1 #fac(2-1)
# n=1
# 1 * 1 #fac(1-1)
# n = 0
# 1
# [1,2,3]
  def fac n
    multiply (1..n).to_a
    # return 1 if n.zero?
    # n * fac(n-1)
  end






end