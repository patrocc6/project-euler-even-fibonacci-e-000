# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  even_fibonacci = fibonacci(limit).select{|num| num.even?}
  return even_fibonacci.inject(:+) 
end

def fibonacci(limit)
  fibonacci_numbers = [1,2,3]

  idx = 3
  while true
    fibonacci_numbers[idx] = fibonacci_numbers[idx-1] + fibonacci_numbers[idx-2]

    if fibonacci_numbers[idx] >= limit
      fibonacci_numbers.pop
      break
    end

    idx += 1
  end

  return fibonacci_numbers
end