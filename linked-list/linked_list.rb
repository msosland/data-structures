require_relative 'node'

class LinkedList

  attr_accessor :first_node, :size


  def initialize
    @first_node = nil
    @size = 0
  end

  # this element is a node
  def insert_first(element)
    temp = @first_node
    element.insert_after(temp)
    @first_node = element
    @size += 1
  end

  def remove_first
    return nil if @first_node == nil
    old_first = @first_node
    old_second = @first_node.next_node
    @first_node.next_node = nil
    @first_node = old_second
    @size -= 1
    old_first.next_node = nil
    return old_first
  end

  # this element is a node
  def insert_last(element)
    if @first_node == nil
      insert_first(element)
    else
      old_last_node = find_last_node
      old_last_node.insert_after(element)
      @size += 1
    end
  end

  def get(index)
    raise IndexError if index < 0 || index > (size - 1)
    pointer = @first_node
    index.times do |i|
      pointer = pointer.next_node
    end
    return pointer
  end

  # this element is an object
  def set(index, element)
    node_at_index = get(index)
    node_at_index.element = element
  end

  # this element is a node
  def insert(index, element)
    if index == 0
      insert_first(element)
    else
      node_before_index = get(index - 1)
      node_at_index = get(index)
      node_before_index.next_node = element
      element.next_node = node_at_index
      @size += 1
    end
  end

  def remove_last
    return nil if @first_node == nil
    if @first_node.next_node == nil
      old_first = @first_node
      @first_node = nil
      @size -= 1
      return old_first
    else
      old_last = find_last_node
      second_to_last = find_second_to_last_node
      second_to_last.remove_after
      @size -= 1
      return old_last
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
