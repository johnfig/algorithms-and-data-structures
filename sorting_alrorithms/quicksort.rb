require 'pry'

def quicksort(array, from=0, to=nil)
  if to.nil?
    to = array.count - 1
  end

  return if from >= to

  pivot_index = from
  index = from
  array[from..to-1].each do |number|
    if number < array[to] && pivot_index == index
      pivot_index += 1
    elsif number < array[to]
      array[index] = array[pivot_index]
      array[pivot_index] = number
      pivot_index += 1
    end
    index += 1
  end

  # swap pivot with pivot_index value
  last = array[to]
  array[to] = array[pivot_index]
  array[pivot_index] = last

  quicksort(array, from, pivot_index-1)
  quicksort(array, pivot_index+1, to)
  array
end

array = [9,8,7,6,5,4,3,2,1].shuffle
p "Array before #{array}"
array = quicksort(array)
p "Array after #{array}"
