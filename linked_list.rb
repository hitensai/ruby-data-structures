class LinkedList
  attr_accessor :head, :length

  def initialize(data)
    self.head = data
    self.length = 0
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
  	   self.length = self.length + 1
  	end
  end

  def find(number)
    if self.head == number
      return true
    elsif self.head.tail.nil?
      return false
    else
      current_node = self.head
      found = false	
      while (!current_node.tail.nil?)
        if current_node.data == number || current_node.tail.data == number
          found = true
          break
        else
          current_node = current_node.tail
        end
      end
      return found
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
l.add(50)
l.add(60)
l.add(70)
puts l.length
puts l.find(60)
puts l.head.tail.tail.data