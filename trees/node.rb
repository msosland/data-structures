require_relative '../array-list/array_list'

class Node

  attr_reader :value, :child_nodes

  def initialize(value)
    @value = value
    @child_nodes = ArrayList.new(4)
  end

  def add_child(child)
  end

end