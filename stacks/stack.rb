require_relative '../linked-list/linked_list'

class Stack

  attr_accessor :stack
  def initialize
    @stack = LinkedList.new
  end

  def push(element)
    @stack.insert_last(Node.new(element))
  end

  def pop
    @stack.remove_last
  end

  def top
    return find_last_node
  end

  def empty?
    @stack.first_node == nil
  end

  private
  def find_last_node
    return nil if @stack.first_node == nil
    traveler = @stack.first_node
    while traveler.next_node != nil
      traveler = traveler.next_node
    end
    return traveler
  end

end