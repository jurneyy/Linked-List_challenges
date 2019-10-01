class Node
  attr_accessor :data, :next

  def initialize(data, next_node=nil)
    @data = data
    @next = next_node
  end 
end 

def print_values(node)
  if node
    print "#{node.data} --> "
    print_values(node.next)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :node

  def initialize
    @node = nil
  end

  # Push a value onto the stack
  def push(value)
    @node = Node.new(value, @node)
    #creating a new node with the current value + reference to last node / top node
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    return Node.new(@data.next, @data)
  end
end

def reverse_list(node)
  # Creating a stack

  stack = Stack.new

  while node
  	#is node nil?
    stack.push(node.data)
    #creating new node 
    node = node.next
  end

  return stack.node
end


node1 = Node.new(10) 
node2 = Node.new("twenty", node1)
node3 = Node.new([1, 2], node2)


reverse = reverse_list(node3)

print_values(node3)

puts "------"

print_values(reverse)

