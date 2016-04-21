require_relative 'node'

describe Node do
  let(:n1){Node.new('parent')}
  let(:n2){Node.new('child')}
  describe '#initialize' do
    it 'instantiates a new node containing value' do
      expect(n1.value).to eq 'parent'
    end

    it 'instantiates an empty collection of child nodes' do
      expect(n1.children).to be_a ArrayList
      expect(n1.children.length).to eq 0
    end
  end

  describe '#add_child' do
    it 'adds a child node to the nodes child nodes' do
      expect(n1.children.length).to eq 0
      n1.add_child(n2)
      expect(n1.children.length).to eq 1
    end
  end

  describe '#children' do
    let(:n3){Node.new('child')}
    let(:n4){Node.new('child')}
    it 'returns the collection of child nodes' do 
      n1.add_child(n2)
      n1.add_child(n3)
      n1.add_child(n4)
      expect(n1.children).to be_a ArrayList
      expect(n1.children.length).to eq 3
    end
  end


end