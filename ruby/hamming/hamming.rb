module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute dna1, dna2
    return 0 if dna1 == dna2
    raise ArgumentError if dna1.length != dna2.length

    delta = 0
    first_dna_values, second_dna_values = dna1.split(''), dna2.split('')
    dna_length = first_dna_values.length

    dna_length.times do |i|
      delta += 1 if first_dna_values[i] != second_dna_values[i]
    end

    return delta
  end
end