require 'pry'

class Triangle

  def initialize(number)
    @number = number
    @triangle = []
  end

  def rows
    rows = @number - 1

    0.upto rows do |row|
      if row == 0
        @triangle << [1]
      elsif row == 1
        @triangle << [1] + [1]
      else
        current = 1

        @triangle << [1]
          until current >= row
            p l_num = @triangle[row - 1][current - 1]
            p r_num = @triangle[row - 1][current]
            number = l_num + r_num
            @triangle[row] << number
            current += 1
          end

        @triangle[row] << 1
      end
    end

    @triangle
  end

end
