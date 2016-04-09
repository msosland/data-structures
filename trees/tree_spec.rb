require_relative 'tree'

describe Tree do
  let(:t1){Tree.new(Node.new('root'))}

  describe '#initialize' do
    it 'instantiates a tree with a root node' do
      expect(t1.root).to be_a Node
      expect(t1.root.value).to eq 'root'
    end
  end
end
