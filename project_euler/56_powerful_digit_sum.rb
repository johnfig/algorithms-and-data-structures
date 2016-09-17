require 'pry'

def powerful_digit_sum
  bottom_number = 1
  max = 0

  while bottom_number < 100
    power = 1
    while power < 100
      number = bottom_number**power
      digit_sum = 0
      number.to_s.split('').each do |digit|
        digit_sum += digit.to_i
      end

      if digit_sum > max
        max = digit_sum
        puts "We have a new digit sum max #{max}"
      end
      power += 1
    end
    bottom_number += 1
  end
end

powerful_digit_sum
