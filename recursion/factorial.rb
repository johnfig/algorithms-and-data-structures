def factorial(number)
  return number if number == 1
  number *= factorial(number-1)
end

puts factorial(5)
