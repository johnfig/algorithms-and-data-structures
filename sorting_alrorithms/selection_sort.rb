require 'pry'

# Selection sort: Each pass finds the minimum and then puts it in the beginning
# or the array
# Selection sort time complexity is O(N)^2

def selection_sort(array)
  minimum_index = 0

  while minimum_index < array.count
    sort = false
    iteration_times = array.count - minimum_index - 1
    minimum = array[minimum_index]

    iteration_times.times do |index|
      offset_index = minimum_index+index+1
      if minimum > array[offset_index]
        minimum = array[offset_index]
        @position = offset_index
        sort = true
      end
    end

    array.insert(minimum_index, array.delete_at(@position)) if @position
    p array

    return if sort == false
    minimum_index += 1
  end
end


selection_sort([9,5,7,3,6]) #=> [3,5,6,7,9]
selection_sort([9,7,8,5,2,3,6,1,4]) #=> [1,2,3,4,5,6,7,8,9]
