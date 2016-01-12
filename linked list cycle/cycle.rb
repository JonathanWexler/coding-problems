# Jon Wexler
# Check if a singly linked list has a cycle

# A cycle: when a node in the linked list's next value points to a node already passed in the list
# Write a function contains_cycle() that takes the first node in a singly-linked list and returns a boolean indicating whether the list contains a cycle.

# Using the following as a node:
class LinkedListNode
    attr_accessor :data, :next

    def initialize value
        @data = value
        @next = nil
    end
end

a = LinkedListNode.new(5)
a.next = LinkedListNode.new(4)
a.next.next = LinkedListNode.new(3)
a.next.next.next = LinkedListNode.new(2)
a.next.next.next.next = LinkedListNode.new(1)
a.next.next.next.next.next = LinkedListNode.new(0)
a.next.next.next.next.next.next = a

# O(1) space, O(n) time #1 solution
def contains_node3 node

    first = second = node

    while second != nil && second.next != nil
        # puts "HERE #{second}"

        first = first.next
        second = second.next.next

        if first == second
            return true
        end
    end

    return false
end

puts contains_node3 a

# O(n) space, and O(n) time
def contains_node node
    nodes = []
    while node.next
        nodes.push node
        if nodes.include?(node.next)
            return true
        end
        node = node.next
    end
    return false
end
puts contains_node a

# O(1) space, and O(n) time, but destructive
# duplicate node is only a shallow copy and still affects following methods
def contains_node2 node
    # node = node.clone
    while node.next 
        if node.next == 3
            return true
        end
        temp = node.next
        node.next = 3
        node = temp
    end

    return false
end

puts contains_node2 a


# Remember that the coding interview is a dialogue, and sometimes your interviewer expects she'll have to offer some hints along the way. One of the most impressive things you can do as a candidate is listen to a hint, fully understand it, and take it to its next logical step - Interview Cake
