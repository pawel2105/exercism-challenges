require 'prime'

module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize num
    @num = num
  end

  def primes
    primes_array = []
    Prime.each(@num) { |p| primes_array << p }
    primes_array
  end
end