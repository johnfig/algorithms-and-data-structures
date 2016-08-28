# Check for duplicate characters in a string
# Time complexity is O(n)

def duplicate_character_string(string)
  puts "Checking if '#{string}' has duplicate characters"
  string.split('').each_with_object({}) do |character, hash|
    return puts 'Duplicate character keys!' if hash.has_key?(character)
    hash[character] = 1
  end
end

duplicate_character_string('dog')
duplicate_character_string('anaconda')
duplicate_character_string('!helo!')
