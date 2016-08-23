require 'pry'

# Bubble sort: Each pass sorts based on size until largest number is at the end
# After first pass you will iterate to she second most last item in array
# Bubble sort time complexity is O(N)^2

def bubble_sort(array)
  array.count.times do
    sort = false
    array.each_with_index do |_item, index|
      if array.count != index + 1 && array[index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
        sort = true
      end
    end
    p array
    return if sort == false
  end
end


bubble_sort([2,5,7,3,6]) #=> [2,3,5,6,7]
bubble_sort([9,7,8,5,2,3,6,1,4]) #=> [1,2,3,4,5,6,7,8,9]
