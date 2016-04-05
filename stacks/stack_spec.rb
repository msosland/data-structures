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

end