module BookKeeping
  VERSION = 2
end

class Integer
  ROMAN_NUM_HASH = {
    1000 => 'M',
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
  }

  def to_roman
    number = self
    roman_numeral = ''

    ROMAN_NUM_HASH.each do |integer_value, letter|
      roman_numeral << letter * (number / integer_value)
      number = number % integer_value
    end

    return roman_numeral
  end
end