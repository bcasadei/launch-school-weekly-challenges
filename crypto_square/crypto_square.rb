require 'pry'

class Crypto

  def initialize(string)
    @string = string
  end

  def normalize_plaintext
    normalized = @string.delete(" _#$%^&!.,-").downcase
  end

  def size
    size = normalize_plaintext.size

    # Math.sqrt(size).ceil # Gets the square root and rounds up to the next number

    case size
    when 2..4
      2
    when 5..9
      3
    when 10..16
      4
    when 17..25
      5
    when 26..36
      6
    when 37..49
      7
    when 50..64
      8
    when 65..81
      9
    when 82..100
      10
    end
  end

  def cipher_table
    table = Hash.new(0)
    characters = normalize_plaintext

    size.times do |i|
      table[('row_' + i.to_s).to_sym] = characters.slice!(0...size).split('')
    end

    table.delete_if { |key, value| value.empty? }
  end

  def plaintext_segments
    cipher_table.values.map { |value| value.join('')}
  end

  def ciphertext
    cipher = []
    size.times do |i|
      cipher_table.each_value { |value| cipher << value[i] }
    end
    cipher.compact.join('')
  end

  def normalize_ciphertext
    normalize_cipher = ''

    size.times do |i|
      cipher_table.each do |key, value| 
        normalize_cipher += value[i] if value[i]
      end
      normalize_cipher += " "
    end
    normalize_cipher.strip
  end

end
