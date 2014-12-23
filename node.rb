
module BinaryTree

  class Node

    attr_reader :value
    attr_accessor :left, :right

    def initialize(value)
      @value = value
    end

    def inspect
      "#{value}::#{left.inspect}|#{right.inspect}"
    end

    def insert(v)
      case v <=> value
      when 1
       if right
       	right.insert(v)
       else
       	self.right = Node.new(v)
       end

      when -1
      	if left
      	  left.insert(v)
      	else
      	  self.left = Node.new(v)
      	end

      when 0 then false
      end
    end

  end
end
