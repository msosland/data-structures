require_relative 'stack'

describe Stack do
  let(:s1){Stack.new}

  describe '#initialize' do
    it 'initializes a new stack with a linked list underlying structure' do
      expect(s1.stack).to be_a(LinkedList)
    end
  end

  describe '#push' do
    it 'adds an element to the stack if the stack is empty' do
      s1.push("this")
      expect(s1.stack.first_node).to be_a(Node)
      expect(s1.stack.first_node.element).to eq "this"
    end

    it 'adds an element to the end when the stack has existing elements' do
      s1.push('this')
      s1.push('that')
      expect(s1.stack.first_node.element).to eq 'this'
      expect(s1.stack.first_node.next_node.element).to eq 'that'
    end
  end

  describe '#pop' do
    it 'returns nil if the stack is empty' do
      expect(s1.pop).to eq nil
    end

    it 'returns the only element if the stack only has one element' do
      s1.push("this")
      popped = s1.pop
      expect(popped).to be_a(Node)
      expect(popped.element).to eq "this"
      expect(s1.pop).to eq nil
    end

    it 'returns the last element when the stack has multiple elements' do
      s1.push('this')
      s1.push('that')
      popped = s1.pop
      expect(popped.element).to eq 'that'
    end
  end

end