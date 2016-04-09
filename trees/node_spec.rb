require_relative 'node'

describe Node do
  let(:n1){Node.new('this')}
  describe '#intitialize' do
    it 'instantiates a new node containing value' do
      expect(n1.value).to eq 'this'
    end

    it 'instantiates an empty collection of child nodes' do
      expect(n1.child_nodes).to be_a ArrayList
    end
  end

  describe '#add_child' do
  end

end