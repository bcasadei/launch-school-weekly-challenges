class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    counts = {}
    @string.downcase.split(/'\s|\s'|[\s.,:!&@$%\^]+/).each do |word|
      if counts.include?(word)
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end
end
