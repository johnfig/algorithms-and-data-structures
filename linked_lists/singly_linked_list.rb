require 'pry'

# SinglyLinkedList has #insert_node method that appends it to the beginning.
# This avoids a dom traversal that results from breaking existing linked lists
# and rebuilding them.

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
    @head.next = @head
    @head = node
  end
end

node_1 = Node.new('node 1')
node_2 = Node.new('node 2')
node_3 = Node.new('node 3')
node_4 = Node.new('node 4')

linked_list = SinglyLinkedList.new(node_1)

linked_list.head.next = node_2
node_2.next = node_3
node_3.next = node_4

puts "Head node is: #{node_1.data}"
puts "Next after node 1 is: #{node_1.next.data}"
puts "Next after node 2 is: #{node_2.next.data}"
puts "Next after node 3 is: #{node_3.next.data}"
puts "Next after node 4 is: #{node_4.next.inspect}"

linked_list.insert_node('new head node')
puts "New head node: #{linked_list.head.data}"
