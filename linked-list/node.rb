class Node
  attr_accessor :next_node
  def initialize(element)
    @element = element
    @next_node = nil
  end

  def insert_after(other_node)
    @next_node = other_node
  end

  def remove_after
    temp = @next_node.next_node
    @next_node.next_node = nil
    @next_node = temp
  end

end