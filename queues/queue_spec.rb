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
    it 'returns nil if the queue is empty' do
      expect(q1.dequeue).to be nil
    end

    it 'returns the only element if the queue has only one element' do
      q1.enqueue('this')
      dequeued = q1.dequeue
      expect(dequeued).to be_a(Node)
      expect(dequeued.element).to eq 'this'
      expect(q1.dequeue).to be nil
    end

    it 'returns the first element in queue of multiple elements' do
      q1.enqueue('this')
      q1.enqueue('that')
      dequeued = q1.dequeue
      expect(dequeued.element).to eq 'this'
    end
  end

  describe '#peel' do
    it 'returns nil when the queue is empty' do
      expect(q1.peel).to eq nil
    end

    it 'returns the first node when the queue has one node' do
      q1.enqueue('this')
      expect(q1.peel).to be_a(Node)
      expect(q1.peel.element).to eq 'this'
    end

    it 'returns the first node when the queue has multiple nodes' do
      q1.enqueue('this')
      q1.enqueue('that')
      expect(q1.peel.element).to eq 'this'
    end
  end

  describe '#empty?' do
    it 'returns true if the queue is empty' do
      expect(q1.empty?).to be true
    end

    it 'returns false when the queue has elements' do
      q1.enqueue('this')
      expect(q1.empty?).to be false
    end
  end


end