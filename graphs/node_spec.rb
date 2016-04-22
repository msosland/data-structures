require_relative 'node'

describe Node do
	let(:n1){Node.new('val')}
	let(:n2){Node.new('other val')}
	let(:n3){Node.new('other val')}

	describe '#initialize' do
		it 'initializes a node with a value' do
			expect(n1.value).to eq 'val'
		end

		it 'initializes a node with an empty collection of edges' do
			expect(n1.edges).to eq []
		end
	end

	describe '#add_edge' do
		it 'adds node to collection' do
			n1.add_edge(n2)
			expect(n1.edges).to eq [n2]
		end
	end

	describe '#nodes' do
		it 'returns a collection of nodes to which this node has outgoing edges' do
			n1.add_edge(n2)
			n1.add_edge(n3)
			expect(n1.nodes).to eq [n2, n3]
		end
	end

end