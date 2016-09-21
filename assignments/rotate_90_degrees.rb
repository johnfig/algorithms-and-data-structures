require 'pry'

def rotate(array)
  rows = Math.sqrt(array.count).to_i
  new_array = []
  offset = 0
  array.each_with_index do |number, index|
    modulo_offset = index%4
    if modulo_offset == 0 && index != 0
      offset += 1
    end
    new_index = array.count - rows*(modulo_offset+1) + offset
    new_array << array[new_index]
  end
  new_array
end
