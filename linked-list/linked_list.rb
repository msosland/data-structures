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
    return nil if @first_node == nil
    temp = @first_node.next_node
    @first_node.next_node = nil
    @first_node = temp
  end

  def insert_last(element)
    if @first_node == nil
      insert_first(element)
    else
      old_last_node = find_last_node
      old_last_node.insert_after(element)
    end
  end

  def get(index)

  end

  def set
  end

  def insert
  end

  def size
    return 0 if @first_node == nil
    counter = 1
    pointer = @first_node
    while pointer.next_node != nil
      pointer = pointer.next_node
      counter += 1
    end
    return counter
  end

  def remove_last
    return nil if @first_node == nil
    if @first_node.next_node == nil
      @first_node = nil
    else
      second_to_last = find_second_to_last_node
      second_to_last.remove_after
    end
  end

  private
  def find_last_node
    # since this is a private method and i am only calling it after checking if the first node != nil, I do not need that check here
    traveler = @first_node
    while traveler.next_node != nil
      traveler = traveler.next_node
    end
    return traveler
  end

  def find_second_to_last_node
    # since this is private and i am only calling it after checking that there are multiple nodes, i do not need that check here
    traveler = @first_node
    while traveler.next_node.next_node != nil
      traveler = traveler.next_node
    end
    return traveler
  end



end
