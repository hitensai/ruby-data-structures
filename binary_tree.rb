class BinaryTree
 attr_accessor :root

 def initialize(node)
   self.root = node
 end

 def insert(value)
   if root.nil?
   	self.root = Node.new(nil,nil, value)
   end
   current_node = root
   previous_node = root

   while !current_node.nil?
      previous_node = current_node
      if value < current_node.value
        current_node = current_node.left
      else
        current_node = current_node.right
      end
   end
   if value < previous_node.value
     previous_node.left = Node.new(nil,nil,value)
   else
     previous_node.right = Node.new(nil,nil,value)
   end
 end
 	
 def find(value)
 	return true if value == root
 	node_finder(root, value)
 end

 def node_finder(node, value)
 	return false if node.nil?

 	return true if node.value == value
 	found = false
 	found = node_finder(node.left, value)
 	return found if found == true
 	return node_finder(node.right, value)
 end
end

class Node
  attr_accessor :left, :right, :value

  def initialize(left=nil, right=nil, value)
  	self.left = left
  	self.right = right
  	self.value = value
  end
end

root = Node.new(nil,nil, 7)
bt = BinaryTree.new(root)
left_child = Node.new(nil, nil, 3)
right_child = Node.new(nil, nil, 9)
root.left = left_child
root.right = right_child
left_child.left = Node.new(nil,nil,1)
left_child.right = Node.new(nil,nil,4)
right_child.left = Node.new(nil,nil,8)
right_child.right = Node.new(nil,nil,10)

puts bt.root.value
puts bt.root.left.value
puts bt.root.right.value

# # returns true
puts bt.find(1) 

# # returns false
puts bt.find(2) 

bt.insert(8)
bt.insert(6)
bt.insert(3)
bt.insert(9)

    #  7
   # /  \
  # 3    9
 # / \  / \
# 1  4  8 10