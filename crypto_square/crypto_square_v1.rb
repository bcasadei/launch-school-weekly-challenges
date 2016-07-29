

class Crypto

  def initialize(string)
    @string = string.downcase
  end

  def normalize_plaintext
    normalized = @string.delete(" _#$%^&!.,-").to_s
  end

  def size
    size = normalize_plaintext.size

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
      # return integer of number of columns
  end

  def cipher_table
    # store text: alternate data handling
    # table = {
    #   :col1 => ['c', 's']
    #   :col2 => ['c', 's']
    # }
  end

  def plaintext_segments
    plaintext_segments = []
    characters = normalize_plaintext

    while characters.size > 0
      plaintext_segments << characters.slice!(0...size)
    end

    plaintext_segments
    # return array with text broken into columns e.g. %w(zomg zomb ies)
  end

  def ciphertext
    segments = plaintext_segments
    cipher = ''

    counter = 0

    while counter < segments[0].size
      segments.map { |segment| cipher += segment[counter] if segment[counter] }
      counter += 1
    end
    cipher

    #return string of text in cipher (obtained by reading down the columns going left to right)
  end

  def normalize_ciphertext
    normalize_cipher = []
    characters = ciphertext
    row_size = (characters.size / size.to_f).ceil


    while characters.size > 0
      normalize_cipher << characters.slice!(0...row_size)
    end

    normalize_cipher.join(' ')
    # return a string of text broken into
  end

end

crypto = Crypto.new('Madness, and then illumination.')
p crypto.normalize_ciphertext
