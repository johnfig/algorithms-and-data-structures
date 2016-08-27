require 'pry'

# This is like a card sorting problem
# Every time you get a new card you put it in order
# Time complexity in worst case is O(n^2) only when pivot is highest or lowest in array
# Time complexity normally is O(n log n)

# This does not call the method on both smaller and bigger arrays
def my_quick_sort(array, pivot_index = 0)
  iteration_count = array.count - pivot_index
  initial_pivot_index = pivot_index

  iteration_count.times do |index|
    item = array[index+initial_pivot_index]
    if item <= array[-1]
      array[index+initial_pivot_index] = array[pivot_index]
      array[pivot_index] = item
      pivot_index += 1
    end
  end

  p "Array: #{array}"
  return if array.count == pivot_index
  quick_sort(array, pivot_index)
end

def quick_sort(array, from=0, to=nil)
  if to == nil
    # Sort the whole array, by default
    to = array.count - 1
  end

  if from >= to
    # Done sorting
    return
  end

  # Take a pivot value, at the far left
  pivot = array[from]

  # Min and Max pointers
  min = from
  max = to

  # Current free slot
  free = min

  while min < max
    if free == min # Evaluate array[max]
      if array[max] <= pivot # Smaller than pivot, must move
        array[free] = array[max]
        min += 1
        free = max
      else
        max -= 1
      end
    elsif free == max # Evaluate array[min]
      if array[min] >= pivot # Bigger than pivot, must move
        array[free] = array[min]
        max -= 1
        free = min
      else
        min += 1
      end
    else
      raise "Inconsistent state"
    end
  end

  array[free] = pivot

  p array
  quick_sort array, from, free - 1
  quick_sort array, free + 1, to
end

p '=== My quicksort 1 ==='
p "Beginning Array: #{[6,5,1,3,8,4,7,9,2]}"
my_quick_sort([6,5,1,3,8,4,7,9,2]) #= [1,2,3,4,5,6,7,8,9]

# TODO fix when left of wall array is unsorted
p '=== My quicksort 2 ==='
p "Beginning Array: #{[2,3,1,4,5,6,7,8,9]}"
my_quick_sort([2,3,1,4,5,6,7,8,9]) #= [1,2,3,4,5,6,7,8,9]

p '=== right quicksort 1 ==='
quick_sort([6,5,1,3,8,4,7,9,2]) #= [1,2,3,4,5,6,7,8,9]

p '=== right quicksort 2 ==='
quick_sort([2,3,1,4,5,6,7,8,9]) #= [1,2,3,4,5,6,7,8,9]
