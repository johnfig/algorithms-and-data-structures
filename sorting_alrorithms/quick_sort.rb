require 'pry'

# This is like a card sorting problem
# Every time you get a new card you put it in order
# Time complexity in worst case is O(n^2) only when pivot is highest or lowest in array
# Time complexity normally is O(n log n)

def quick_sort(array, sub_array = [])
  pivot = array[-1]
  array.each_with_index do |item, index|
    if item <= pivot
      array[index] = array[0]
      array[0] = item
      sub_array << array.shift
    end
  end

  p "Sub array: #{sub_array}, Array: #{array}"
  return if array.empty?
  quick_sort(array, sub_array)
end

p '=== Quick sort 1 ==='
quick_sort([6,5,1,3,8,4,7,9,2]) #= [1,2,3,4,5,6,7,8,9]
p '=== Quick sort 2 ==='
quick_sort([2,3,1,4,5,6,7,8,9]) #= [1,2,3,4,5,6,7,8,9]

