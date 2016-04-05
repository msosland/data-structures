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
  end

  def top
  end

  def empty?
  end

  private
  def find_last_node
    # since this is a private method and i am only calling it after checking if the first node != nil, I do not need that check here
    traveler = @stack.first_node
    while traveler.next_node != nil
      traveler = traveler.next_node
    end
    return traveler
  end

end