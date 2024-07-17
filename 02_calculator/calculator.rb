def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  total = 0
  i = 0
  while i < array.length
    total += array[i]
    i += 1
  end
  total
end

def multiply(a, b)
  a * b
end

def multiply_several(*numbers)
  result = 1
  numbers.each do |num|
    result *= num
  end
  result
end

def power(base, exponent)
  result = 1
  (1..exponent).each do |_|
    result *= base
  end
  result
end

def factorial(n)
  return 1 if n.zero?

  result = 1
  (1..n).each do |i|
    result *= i
  end
  result
end
