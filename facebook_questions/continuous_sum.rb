# Write a function that takes an array and an integer
# If any continuous sum of integers in the array equals
# the integer print true

def continuous_sum(array, number)
  array.each_with_index do |_item, index|
    p array[index..-1]
    array[index..-1].inject(0) do |memo, item|
      break if memo > number
      memo += item
      return puts 'True!' if memo == number
      memo
    end
  end
end

continuous_sum([1,2,3,4,5,6,7,8,9], 18) #=> true
continuous_sum([1,2,3,4,5,6,7,8,9], 19) #=> false
