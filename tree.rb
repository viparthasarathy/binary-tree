require './node'

class Tree

  attr_accessor :nodes, :value

  def initialize
  	@nodes = []
  end

  def values
  	@nodes.each do |node|
  	  node
  	end
  end

  def build_tree(nodes)
  	nodes.each do |value|
  	  if @nodes.empty?
  	    @nodes.push(BinaryTree::Node.new(value))
  	  else
  	  	@nodes[0].insert(value)
  	  end
  	end
  end

end

tree = Tree.new
tree.build_tree([3, 1, 2, 5, 9, 13, 4, 7, 5, 6, 10])
puts tree.inspect

