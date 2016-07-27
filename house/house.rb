class House
  THIS_IS = 'This is '

  def self.recite
  
    line_1 = []
    line_2 = []

    pieces.each do |piece|
      line_1 << THIS_IS + piece[0]
    end

    counter = 0
    while counter < pieces.size - 1
      line_2 << pieces[counter][1] + ' ' + pieces[counter + 1][0]
      counter += 1
    end
    
    start = 0
    stop = 0
    while start < line_1.size
      line_1[start] + "/n"
      counter += 1
    end


  end

  private

  def self.pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

House.recite
