require 'pry'

def powerful_digit_sum
  max_sum = 0
  (1..99).each do |a|
    (1..99).each do |b|
      sum = (a**b).to_s.split('').map(&:to_i).reduce(:+)
      if max_sum < sum
        max_sum = sum
        puts "Max sum: #{sum}"
      end
      b += 1
    end
    a += 1
  end
end

powerful_digit_sum
