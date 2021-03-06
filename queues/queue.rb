require_relative '../linked-list/linked_list'

class Queue

  attr_accessor :queue
  def initialize
    @queue = LinkedList.new
  end

  def enqueue(element)
    @queue.insert_last(Node.new(element))
  end

  def dequeue
    @queue.remove_first
  end

  def peel
    @queue.first_node
  end

  def empty?
    @queue.first_node == nil
  end
end