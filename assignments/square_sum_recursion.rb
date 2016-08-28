# Write a recursive method to calculate the sum of
# squares of the first n natural numbers. n is to
# be given as an input.
# Time complexity of this algorithm is O(n)

def square_sum_recursion(number, sum = 0)
  sum = sum + number*number
  return puts "Sum of recursive squares is #{sum}" if number == 1
  number -= 1
  square_sum_recursion(number, sum)
end

square_sum_recursion(3)
square_sum_recursion(1000)
