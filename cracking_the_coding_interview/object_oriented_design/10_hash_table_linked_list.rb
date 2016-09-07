require 'pry'

class LinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end
end

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
  end
end

class LinkedListHashTable
  PRIME_NUMBER = 1

  attr_accessor :hash_table

  def initialize
    @hash_table = []
  end

  def insert(key, value)
    index = hashify(key) % PRIME_NUMBER
    node = Node.new([key, value])

    if hash_table[index]
      element = hash_table[index].head
      loop do
        if element.next.nil?
          element.next = node
          break
        else
          element = element.next
        end
      end
    else
      hash_table[index] = LinkedList.new(node)
    end
  end

  def lookup(key)
    index = hashify(key) % PRIME_NUMBER
    element = hash_table[index].head if hash_table[index]

    loop do
      break p 'nothing found' if element.nil?
      if element.data[0] == key
        p element.data[1]
        break
      else
        element = element.next
      end
    end
  end

  private

  # get natural number representation of string
  def hashify(key)
    array = key.split('')
    count = array.count
    array.inject(0) do |object,char|
      object += char.ord ** count
      count -= 1
      object
    end
  end
end

hash = LinkedListHashTable.new
hash.insert('hello', 'world')
hash.insert('why', 'me')
p hash
hash.lookup('why')
hash.lookup('hello')
hash.lookup('nothing')
