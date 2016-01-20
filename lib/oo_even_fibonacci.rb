# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    even_fibonacci = self.fibonacci.select{|num| num.even?}
    return even_fibonacci.inject(:+)
  end

  def fibonacci
    fibonacci_numbers = [1,2,3]

    idx = 3
    while true
      fibonacci_numbers[idx] = fibonacci_numbers[idx-1] + fibonacci_numbers[idx-2]

      if fibonacci_numbers[idx] >= @limit
        fibonacci_numbers.pop
        break
      end

      idx += 1
    end

    return fibonacci_numbers
  end
end