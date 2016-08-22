# naive approach
# iterate over array starting with first character
# O(N)^2. This is bad

require 'pry'

puts '===== suboptimal approach ===='

def unique_character_string?(string)
  puts string

  string_array = string.split('')
  identical_string_array = string.split('')

  string_array.each do |select_character|
    return if identical_string_array.size == 2
    identical_string_array.shift
    identical_string_array.each do |assert_character|
      if select_character == assert_character
        puts 'false'
      end
    end
  end
end

unique_character_string?('cat')     #=> true
unique_character_string?('animal')  #=> true
unique_character_string?('moose')   #=> false


# Optimal approach
# Build a hash and if key exists in hash it has a non unique character
# O(N) linear time because you build a hash and iterate through array once

puts '===== optimal approach ===='

def unique_character_string?(string)
  puts string
  string_array = string.split('')

  string_array.each_with_object({}) do |character, hash|
    if hash.has_key?(character)
      puts false
    else
      hash[character] = 1
    end
  end
end

unique_character_string?('cat')     #=> true
unique_character_string?('animal')  #=> true
unique_character_string?('moose')   #=> false
