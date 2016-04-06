require_relative 'queue'

describe Queue do
  let(:q1){Queue.new}

  describe '#initialize' do
    it 'initializes a new queue with a linked list underlying structure' do
      expect(q1.queue).to be_a(LinkedList)
    end
  end

  describe '#enqueue' do
    it 'adds a new element to an empty queue' do
      q1.enqueue("this")
      expect(q1.queue.first_node).to be_a(Node)
      expect(q1.queue.first_node.element).to eq "this"
    end

    it 'adds an element to the end when the queue has existing elements' do
      q1.enqueue('this')
      q1.enqueue('that')
      expect(q1.queue.first_node.element).to eq 'this'
      expect(q1.queue.first_node.next_node.element).to eq 'that'
    end
  end

  describe '#dequeue' do
  end

  describe '#peel' do
  end

  describe '#empty?' do
  end


end