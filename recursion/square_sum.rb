def square_sum(number)
  return number if number < 1
  number = number*number + square_sum(number-1)
end
