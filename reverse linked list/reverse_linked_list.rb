# Jon Wexler
# Reverse a LinkedList

class LinkedListNode
    attr_accessor :data, :next
    def initialize data
        @data = data
        @next = nil
    end
end

a = LinkedListNode.new(5)
a.next = LinkedListNode.new(4)
a.next.next = LinkedListNode.new(3)
a.next.next.next = LinkedListNode.new(2)
a.next.next.next.next = LinkedListNode.new(1)
a.next.next.next.next.next = LinkedListNode.new(0)

# O(n) time and O(1) space
# Work for all list sizes or nil
def reverse_list(node)
    last = nil
    while node != nil
        temp = node.next
        node.next = last
        last = node
        node = temp
    end
    last
end
puts a.inspect
puts (reverse_list a).inspect