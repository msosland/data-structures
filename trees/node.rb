require_relative '../array-list/array_list'

class Node

  attr_reader :value, :children

  def initialize(value)
    @value = value
    @children = ArrayList.new()
  end

  def add_child(child)
    @children.add(child)
  end

end