class WordProblem

  def initialize(problem)
    @problem = problem
  end

  def parse_problem
    @problem.gsub(/plus|minus|multiplied|divided/, 
      'plus' => '+', 
      'minus' => '-',
      'multiplied' => '*',
      'divided' => '/').delete('a-zA-Z?.,').split(' ')
  end

  def operation(num1, operator, num2)
    case operator
    when '+'
      num1 + num2
    when '-'
      num1 - num2
    when '*'
      num1 * num2
    when '/'
      num1 / num2
    end
  end

  def answer
    problem = parse_problem

    raise ArgumentError if problem.size < 3

    result = operation(problem[0].to_i, problem[1], problem[2].to_i)

    problem.each_with_index do |char, i|
      result = operation(
                result, 
                problem[i], 
                problem[i + 1].to_i) if i > 2 && i.odd?
    end

    result
  end
end
