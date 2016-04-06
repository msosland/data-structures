require_relative 'queue'

describe Queue do
  let(:q1){Queue.new}

  describe '#initialize' do
    it 'initializes a new queue with a linked list underlying structure' do
      expect(q1.queue).to be_a(LinkedList)
    end
  end

  describe '#enqueue' do
  end

  describe '#dequeue' do
  end

  describe '#peel' do
  end

  describe '#empty?' do
  end


end