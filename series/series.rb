class Series
  def initialize(digits)
    @digits = digits.split('').map { |digit| digit.to_i }
    # @digits = digits.each_char.map(&:to_i) # cleaner example than mine
  end

  def slices(num)
    raise ArgumentError, 'number exceeds length' unless num <= @digits.size

    series = []
    (0..(@digits.size - num)).each { |start| series << @digits[start, num] }
    series

    # each_cons(count).to_a # cleaner example
  end

end

series = Series.new('01234')
# p series.slices(1)