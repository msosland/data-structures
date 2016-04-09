require_relative 'node'

describe Node do
  let(:n1){Node.new('parent')}
  let(:n2){Node.new('child')}
  describe '#initialize' do
    it 'instantiates a new node containing value' do
      expect(n1.value).to eq 'parent'
    end

    it 'instantiates an empty collection of child nodes' do
      expect(n1.child_nodes).to be_a ArrayList
    end
  end

  describe '#add_child' do
    it 'adds a child node to the nodes child nodes' do
      expect(n1.child_nodes.length).to eq 0
      n1.add_child(n2)
      expect(n1.child_nodes.length).to eq 1
    end

  end

end