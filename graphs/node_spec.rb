require_relative 'node'

describe Node do
	let(:n1){Node.new('val')}

	describe '#initialize' do
		it 'initializes a node with a value' do
			expect(n1.value).to eq 'val'
		end
	end
end