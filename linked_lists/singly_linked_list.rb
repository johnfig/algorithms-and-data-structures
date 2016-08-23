require 'pry'

class Node
  attr_accessor :node, :next

  def initialize(node)
    @node = node
  end
end

node_1 = Node.new('node 1')
node_2 = Node.new('node 2')
node_3 = Node.new('node 3')
node_4 = Node.new('node 4')

node_1.next = node_2
node_2.next = node_3
node_3.next = node_4

puts "Node 1 is: #{node_1.node}"
puts "Next after node 1 is: #{node_1.next.node}"
puts "Next after node 2 is: #{node_2.next.node}"
puts "Next after node 3 is: #{node_3.next.node}"
puts "Next after node 4 is: #{node_4.next.inspect}"
