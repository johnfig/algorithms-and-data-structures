# When you know the range of numbers given this can be done in linear time
# n reads, n writes, k+1 reads, n writes
# Worst case time complexity O(n)

require 'pry'

def counting_sort(array, top)
  tmp_array = Array.new

  array.each do |number|
    if tmp_array[number].nil?
      tmp_array[number] = 1
    else
      tmp_array[number] += 1
    end
  end

  new_array = []
  tmp_array.each_with_index do |number, index|
    unless number.nil?
      number.times { new_array << index }
    end
  end

  p new_array
end

counting_sort([9,8,7,6,6,5,4,3,2,2,1], 10)
