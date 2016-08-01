class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(array)
    array.select { |word| compare_words(word.downcase) }
  end

  private

  def compare_words(other_word)
    return false if other_word == @word
    @word.chars.sort.join('') == other_word.chars.sort.join('')
  end
end
