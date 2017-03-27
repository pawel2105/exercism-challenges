module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert number
    result = ''

    factorials = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }

    factorials.each do |k,v|
      result += v if number % k == 0
    end

    result.length > 0 ? result : number.to_s
  end
end