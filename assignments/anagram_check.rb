# Check for anagram
# Time complexity is O(2n)

def anagram_check(string, string_2)
  hash_1 = string.split('').each_with_object({}) do |character, hash|
             if hash.has_key?(character)
               hash[character] += 1
             else
               hash[character] = 1
             end
           end
  hash_2 = string_2.split('').each_with_object({}) do |character, hash|
             if hash.has_key?(character)
               hash[character] += 1
             else
               hash[character] = 1
             end
           end
  puts "'#{string_2}' is an anagram of '#{string}!" if hash_1 == hash_2
  puts "'#{string_2}' is NOT an anagram of '#{string}!" if hash_1 != hash_2
end

anagram_check('cat', 'dog')
anagram_check('hello', 'elolh')
