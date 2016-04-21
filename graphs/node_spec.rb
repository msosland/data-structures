require_relative 'node'

describe Node do
	let(:n1){Node.new('val')}
	let(:n2){Node.new('other val')}

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

end