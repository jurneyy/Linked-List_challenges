class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
#node1.next_node = node3


def cycle_detection(list)

  if not list 
    return true
  end

  slow = list
  fast = list

  while fast
    if fast == slow
      return false 
    end 
    slow = slow.next_node
    fast = fast.next_node.next_node
  end 

  return true
end 

puts cycle_detection(node3)