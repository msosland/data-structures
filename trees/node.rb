require_relative '../array-list/array_list'

class Node

  attr_reader :value, :child_nodes

  def initialize(value)
    @value = value
    @child_nodes = ArrayList.new(0)
  end

  def add_child(child)
    @child_nodes.add(child)
  end

end