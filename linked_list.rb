class LinkedList
  attr_accessor :head

  def initialize(data)
    self.head = data
  end

  def add(number)
  	if self.head.nil?
  	  self.head = Node.new(number)
  	else
  	   current_node = self.head	
  	   while(!current_node.tail.nil?)
  	     current_node = current_node.tail
  	   end
  	   current_node.tail = Node.new(number)
  	end
  end	
end

class Node
  attr_accessor :data, :tail

  def initialize(number1, tail=nil)
    self.data = number1
    self.tail = tail
  end
end

l = LinkedList.new(Node.new(10))
puts l.head.data
l.add(20)
l.add(30)
puts l.head.tail.tail.data