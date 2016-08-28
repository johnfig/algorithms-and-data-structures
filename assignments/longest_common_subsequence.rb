# Find the longest common subsequence of string characters
# Time complexity of this algorithm is O(2n)

LETTERS = 'abcdefghijklmnopqrstuvwxyz'

def longest_common_subsequence(string)
  character_hash = build_character_hash
  character_array = string.split('')
  count = 0
  reset = true

  character_array.each_with_index do |character, index|
    if reset == true
      count += 1
      reset = false
    end

    if character_hash[character_array[index-1]] < character_hash[character]
      count += 1
    else
      count = 0
      reset = true
    end
  end

  p "The longest sequence in this array is #{count}"
end

def build_character_hash
  index = 0
  LETTERS.split('').each_with_object({}) do |letter, hash|
    hash[letter] = index
    index += 1
  end
end

longest_common_subsequence('abcabcdabcdeabcdefgabcdefgilnpqrsz')
