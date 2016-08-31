require 'pry'

# Implement a hashtable using closed addressing
# It will used linked lists for conflict resolution
# Time complexity of reads is O(n)

class ClosedAddressingHashTable
  attr_accessor :hash_table

  def initialize
    @hash_table = []
  end

  def insert(key, value)
    index = hashify(key)

    if hash_table[index].nil?
      node = Node.new([key, value])
      linked_list = SinglyLinkedList.new(node)
      hash_table[index] = linked_list
    else
      hash_table[index].insert_node([key, value])
    end
  end

  def lookup(key)
    index = hashify(key)
    unless hash_table[index].nil?
      node = hash_table[index].head
      while node != nil do
        if key == node.data[0]
          break node.data[1]
        else
          node = node.next
        end
      end
    end
  end

  # get natural number representation of string
  def hashify(key)
    array = key.split('')
    count = array.count
    index = array.inject(0) do |object,char|
      object += char.ord ** count
      count -= 1
      object
    end
    index % 89
  end
end

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
  end
end

class SinglyLinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def insert_node(data)
    node = Node.new(data)
    old_head = @head
    @head = node
    @head.next = old_head
  end

  def delete_from_head
    old_head = @head
    @head = @head.next
    old_head = nil # This will deallocate the old head object
  end
end

hash = ClosedAddressingHashTable.new
hash.insert('hello', 'world')
hash.insert('why', 'me')
p hash
p hash.lookup('hello')
p hash.lookup('why')
p hash.lookup('nothing')
