# Class converts octal to decimal
class Octal
  INVALID = /[^0-7]/

  def initialize(str)
    @array = str.split('')
    @last = @array.size - 1
  end

  def invalid_chars?
    @array.any? { |char| char.match(INVALID) }
  end

  def calculate
    result = 0
    @array.each.with_index do |char, i|
      result += char.to_i
      result *= 8 unless i == @last
    end
    result
  end

  def to_decimal
    return 0 if invalid_chars? || @array.join() == 0
    calculate
  end
end
