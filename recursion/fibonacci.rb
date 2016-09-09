def fibonacci(number, first, last)
  p last
  first, last = last, first + last
  number -= 1
  if number <= 1
    p last
    return last
  end
  fibonacci(number, first, last)
end

fibonacci(5, 1, 1)

