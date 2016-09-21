require 'pry'

def mergesort(array)
  return array if array.count <= 1
  array = divide(array)
  conquer(array[0], array[1])
end

def divide(array)
  offset = array.count/2
  part_a = mergesort array[0..offset-1]
  part_b = mergesort array[offset..-1]
  [part_a, part_b]
end

def conquer(part_a, part_b)
  array = []

  offset_a = 0
  offset_b = 0

  while offset_a < part_a.count && offset_b < part_b.count
    if part_a[offset_a] <= part_b[offset_b]
      array << part_a[offset_a]
      offset_a += 1
    else
      array << part_b[offset_b]
      offset_b += 1
    end
  end

  while offset_a < part_a.count
    array << part_a[offset_a]
    offset_a += 1
  end

  while offset_b < part_b.count
    array << part_b[offset_b]
    offset_b += 1
  end

  array
end

array = [3,1,4,2]
p "Beginning Array: #{array}"
puts '=== implementing mergesort ==='
array = mergesort array
p "Ending Array: #{array}"

array = [5,3,1,4,2]
p "Beginning Array: #{array}"
puts '=== implementing mergesort ==='
array = mergesort array
p "Ending Array: #{array}"
