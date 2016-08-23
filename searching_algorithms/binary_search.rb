# Binary search: Finds the midpoint or ordered list
# it checks if item is smaller or larger than searching
# item and then repeats the same thing until it finds it
#
# Time Complexity: O(log n) #=> Incredibly fast

def binary_search(array, search_number)
  if array.count.even?
    midpoint = array.count / 2 - 1
  else
    midpoint = array.count / 2
  end

  loop do
    if search_number == array[midpoint]
      puts "Index #{midpoint}"
      return
    elsif search_number < array[midpoint]
      midpoint = midpoint/2
    elsif search_number > array[midpoint]
      midpoint = midpoint/2 + midpoint
    end
  end
end

binary_search([2,3,4,5,6], 5) #=> 3
binary_search([4,5,6,7,8,9,10,11,12,13,14,15], 14) #=> 10
