# Jon Wexler
# Find the kth node of a linked list

# LinkedListNode object
class LinkedListNode
    attr_accessor :data, :next

    def initialize data
        @data = data
    end
end

# Setting up the node data
a = LinkedListNode.new(8)
b = LinkedListNode.new(7)
c = LinkedListNode.new(6)
d = LinkedListNode.new(5)
e = LinkedListNode.new(4)
f = LinkedListNode.new(3)
g = LinkedListNode.new(2)
h = LinkedListNode.new(1)

a.next = b
b.next = c
c.next = d
d.next = e
e.next = f
f.next = g
g.next = h

# the method take a number and node, and must find the num from last node
def kth_node num, node
    first = node
    while num > 0 && first
        first = first.next
        num -= 1
    end
    while first && first.next
        node = node.next 
        first = first.next
    end
    node  
end

puts (kth_node 0, a).inspect

