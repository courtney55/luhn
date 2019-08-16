module Luhn

  def self.is_valid?(number)
  number
    .to_s.chars
    .map(&:to_i)
    .reverse
    .map.with_index { |n, i| i.odd? ? n * 2 : n }
    .map { |n| n > 9 ? n - 9 : n }
    .inject(:+) % 10 == 0 
  end
end