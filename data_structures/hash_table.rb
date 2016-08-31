require 'pry'

# Implement a hashtable using open addressing (quadratic probing)
# Nested array with hashed index and key value is a nested array
# Time complexity of reads is O(n)

class HashTable
  attr_accessor :hash_table

  def initialize
    @hash_table = []
  end

  def insert(key, value)
    index = hashify(key)
    index = begin_quadratic_prob(index)
    hash_table[index] = [key, value]
  end

  def lookup(key)
    index = hashify(key)
    begin_quadratic_lookup(index, key)
  end

  def begin_quadratic_lookup(index, key)
    i = 0
    while !hash_table[index].nil? && key != hash_table[index][0] && index < hash_table.count do
      index = index % 20 + i*i
      i += 1
    end
    hash_table[index][1] if hash_table[index]
  end

  # TODO - Fix this, this is not good
  def begin_quadratic_prob(index)
    found = false
    i = 0
    while found == false do
      new_index = index % 20 + i*i
      if hash_table[new_index].nil?
        found = true
        return new_index
      end
      i += 1
    end
  end

  # get natural number representation of string
  def hashify(key)
    array = key.split('')
    count = array.count
    array.each_with_object(0) do |char,object|
      object += char.ord ** count
      count -= 1
    end
  end
end

hash = HashTable.new
hash.insert('hello', 'world')
hash.insert('why', 'me')
p hash
p hash.lookup('hello')
p hash.lookup('why')
p hash.lookup('nothing')
