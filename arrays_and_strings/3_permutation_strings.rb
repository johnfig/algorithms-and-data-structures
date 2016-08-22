# naive approach
# convert both arrays into hashes and then check equality
# iterate over hash and decrement value until below 0 or key does not exist
# O(2N). This is not great, but it works

puts '===== suboptimal approach ===='

def permutation_strings?(string, second_string)
  puts "First string #{string}, Second string #{second_string}"
  first_hash = string.split('').each_with_object({}) do |character, hash|
    if hash.has_key?(character)
      hash[character] += 1
    else
      hash[character] = 1
    end
  end

  second_hash = second_string.split('').each_with_object({}) do |character, hash|
    if hash.has_key?(character)
      hash[character] += 1
    else
      hash[character] = 1
    end
  end

  puts first_hash == second_hash
end

permutation_strings?('moose', 'moseo') #=> true
permutation_strings?('hello', 'melllo') #=> false

