class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if not list_node
    print "nil\n"
    return
  else
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  end
end

def cycle_detection_recursive(list)
  slow = list
  fast = list 

  return recursive_detect(slow.next_node, fast.next_node.next_node)
end 

def recursive_detect(slow, fast)

  if not fast.next_node 
    return false
  elsif fast == slow 
    return true
  else 
    recursive_detect(slow.next_node, fast.next_node.next_node)
  end
end

def cycle_detection(list)

  slow = list
  fast = list

  while fast.next_node
    slow = slow.next_node
    fast = fast.next_node.next_node
    if fast == slow
      return true
    end 
  end 
  return false
end 

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3


puts cycle_detection(node3)
puts cycle_detection_recursive(node3)
