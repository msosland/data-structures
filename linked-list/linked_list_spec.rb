require_relative 'linked_list'

describe LinkedList do
  let(:ll1){LinkedList.new}

  describe "#new" do
    it 'initializes with first node set to nil' do
      expect(ll1.first_node).to eq nil
    end
  end

  describe '#insert first' do
    let(:node1){Node.new("a")}
    let(:node2){Node.new("b")}
    it 'sets the first node to the new element when list is empty' do
      ll1.insert_first(node1)
      expect(ll1.first_node).to eq node1
    end

    it 'sets first node and shifts old first node to first nodes next node if list is not empty' do
      ll1.insert_first(node1)
      expect(ll1.first_node).to eq node1
      ll1.insert_first(node2)
      expect(ll1.first_node).to eq node2
      expect(node2.next_node).to eq node1
    end
  end

  describe '#remove_first' do
    let(:node1){Node.new("a")}
    let(:node2){Node.new("b")}
    it 'when list is multiple elements, second element becomes first element' do
      ll1.insert_first(node1)
      ll1.insert_first(node2)
      expect(ll1.first_node).to eq node2
      ll1.remove_first
      expect(ll1.first_node).to eq node1
    end

    it 'when list is one element, first element becomes nil' do
      ll1.insert_first(node1)
      expect(ll1.first_node).to eq node1
      ll1.remove_first
      expect(ll1.first_node).to eq nil
    end
  end
end
