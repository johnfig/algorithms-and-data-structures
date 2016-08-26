# This is like a card sorting problem
# Every time you get a new card you put it in order
# Time complexity is O(n^2)

def insertion_sort(array)
  array.each_with_index do |item, index|
    new_card = array[index]
    @index_position = index
    array[0..index].each_with_index do |_item, index_2|
      next if index == 0
      compare_index = index - index_2
      if new_card < array[index - index_2]
        array.insert(compare_index, array.delete_at(@index_position))
        p "Intermediate array step: #{array}"
        @index_position = compare_index
      end
    end
    p array
  end
end

insertion_sort([5,7,3,2,1]) #= [1,2,3,5,7]
insertion_sort([9,7,6,5,4,3,2,1]) #= [1,2,3,4,5,6,7,8,9]
