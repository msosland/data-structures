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

  end

  def peel
  end

  def empty?
  end
end