class RubyGraph
  attr_accessor :node_num, :neighbors 

  def initialize(node_num, neighbors= {})
    self.node_num = node_num
    self.neighbors = neighbors
  end

  def add_vertex(node)
  	self.neighbors[node] = []
  	@node_num += 1
  end

  def add_edge(node1, node2)
  	if @neighbors[node1]
  	  @neighbors[node1].push(node2)
  	  @neighbors[node2].push(node1)
  	elsif @neighbors[node2]
  	  @neighbors[node1].push(node2)
  	  @neighbors[node2].push(node1)
  	end
  end

  def show_connection
  end
end

v = RubyGraph.new(0)
v.add_vertex('0')
v.add_vertex('1')
v.add_vertex('2')
v.add_vertex('3')
v.add_vertex('4')
v.add_vertex('5')
v.add_vertex('6')
v.add_edge('3', '1')
v.add_edge('3', '4')
v.add_edge('4', '2')
v.add_edge('4', '5')
v.add_edge('1', '2')
v.add_edge('1', '0')
v.add_edge('0', '2')
v.add_edge('6', '5')

puts v.node_num
puts v.neighbors
