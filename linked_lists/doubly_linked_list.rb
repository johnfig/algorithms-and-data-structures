require 'pry'

class Node
  attr_accessor :data, :previous, :next

  def initialize(data)
    @data = data
  end
end

class DoublyLinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def insert_node(data)
    old_head = @head
    node = Node.new(data)
    old_head.previous = node
    node.next = old_head
    @head = node
  end
end

node_1 = Node.new('node 1')
node_2 = Node.new('node 2')
node_3 = Node.new('node 3')
node_4 = Node.new('node 4')

doubly_linked_list = DoublyLinkedList.new(node_1)
doubly_linked_list.head.next = node_2
node_2.next = node_3
node_3.next = node_4

node_4.previous = node_3
node_3.previous = node_2
node_2.previous = node_1

puts "Node 1 is: #{node_1.data}"
puts "Next after node 1 is: #{node_1.next.data}"
puts "Next after node 2 is: #{node_2.next.data}"
puts "Next after node 3 is: #{node_3.next.data}"
puts "Next after node 4 is: #{node_4.next.inspect}"
puts "Next before node 4 is: #{node_4.previous.data}"
puts "Next before node 3 is: #{node_3.previous.data}"
puts "Next before node 2 is: #{node_2.previous.data}"
puts "Next before node 1 is: #{node_1.previous.inspect}"

puts '===== Adding Node ===='
doubly_linked_list.insert_node('new head node')
puts "New head node: #{doubly_linked_list.head.data}"
puts "Next node is: #{doubly_linked_list.head.next.data}"

