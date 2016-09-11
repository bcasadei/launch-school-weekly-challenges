require 'pry'

class SumOfMultiples
  def initialize(num1, num2, *num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def to(max_value)
    self.class.to(max_value, @num1, @num2, @num3)
  end

  def self.to(max_value, num1=3, num2=5, *num3)
    numbers = [num1, num2, num3].flatten

    counter = 0
    multiples = (1...max_value).select do |n|
      while counter < numbers.size
        n % numbers[counter] == 0
        counter += 1
        # binding.pry
      end
    end
    p multiples
  end

end

# SumOfMultiples.to(4)
SumOfMultiples.new(7, 13, 17).to(20)
# SumOfMultiples.to(100)
