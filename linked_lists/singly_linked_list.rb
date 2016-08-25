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
    old_head = @head
    @head = node
    @head.next = old_head
  end

  def delete_from_head
    old_head = @head
    @head = @head.next
    old_head = nil # This will deallocate the old head object
  end

  def search_data(data)
    node = @head
    loop do
      break puts 'Found!' if node.data == data
      node = node.next
      break puts 'Not found!' if node.nil?
    end
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

puts '===== Adding Node ===='
linked_list.insert_node('new head node')
puts "New head node: #{linked_list.head.data}"
puts "Next node is: #{linked_list.head.next.data}"

puts '===== Deleting Node ===='
puts "Current head node: #{linked_list.head.data}"
linked_list.delete_from_head
puts "New head node: #{linked_list.head.data}"
puts "Next node is: #{linked_list.head.next.data}"


linked_list.search_data('blah') #= Not found!
linked_list.search_data('node 4') #= Found!
