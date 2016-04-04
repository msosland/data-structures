require_relative 'node'

class LinkedList

  attr_accessor :first_node

  def initialize
    @first_node = nil
  end

  def insert_first(element)
    temp = @first_node
    element.insert_after(temp)
    @first_node = element
  end

  def remove_first
    temp = @first_node.next_node
    @first_node.next_node = nil
    @first_node = temp
  end

  def insert_last(element)

  end

  def remove_last
  end

  private
  def find_last_node
    return @first_node if @first_node == nil
    traveler = @first_node
    while traveler.next_node != nil
      traveler = traveler.next_node
    end
    return traveler
  end


end
