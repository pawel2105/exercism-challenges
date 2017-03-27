module BookKeeping
  VERSION = 4
end

class Pangram
  NUMBER_OF_LETTERS_IN_ALPHABET = 26

  def self.pangram? sequence
    character_array = sequence.chars.select { |char| char =~ /[A-Z]/i }
    character_array.uniq.length == NUMBER_OF_LETTERS_IN_ALPHABET
  end
end