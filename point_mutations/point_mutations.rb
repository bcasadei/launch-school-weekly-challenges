class DNA

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    hamming_distance = 0
        
    (0...@strand.size).each do |num|
      if @strand[num] && distance[num]
        hamming_distance += 1 if @strand[num] != distance[num]
      end
    end
    hamming_distance

  end
end
