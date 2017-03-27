module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
    @range = 1..number
  end

  def square_of_sum
    @range.inject(0) { |sum, num| sum + num } ** 2
  end

  def sum_of_squares
    @range.inject(0) { |sum, num| sum + num ** 2 }
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end
end