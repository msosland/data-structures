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
      expect(ll1.first_node.next_node).to eq node1
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

  describe '#insert_last' do
    let(:node1){Node.new("a")}
    let(:node2){Node.new('b')}
    let(:node3){Node.new('c')}
    it 'sets the first node to the new node if the list is empty' do
      expect(ll1.first_node).to eq nil
      ll1.insert_first(node1)
      expect(ll1.first_node).to eq node1
    end

    it 'places new element on the end when list is not empty' do
      expect(ll1.first_node).to eq nil
      ll1.insert_first(node1)
      expect(ll1.first_node).to eq node1
      ll1.insert_first(node2)
      expect(ll1.first_node).to eq node2
      ll1.insert_last(node3)
      expect(ll1.first_node.next_node.next_node).to eq node3
    end
  end

  describe '#remove_last' do
    let(:node1){Node.new("a")}
    let(:node2){Node.new('b')}
    let(:node3){Node.new('c')}
    it 'returns nil if list is empty' do
      expect(ll1.remove_last).to eq nil
    end

    it 'empties list if list is only one node' do
      ll1.insert_first(node1)
      expect(ll1.first_node).to eq node1
      ll1.remove_last
      expect(ll1.first_node).to eq nil
    end

    it 'removes last element for all other list sizes' do
      ll1.insert_first(node1)
      ll1.insert_first(node2)
      ll1.insert_first(node3)
      expect(ll1.first_node.next_node.next_node).to eq node1
      ll1.remove_last
      expect(ll1.first_node.next_node.next_node).to eq nil
    end
  end

  describe '#size' do
    let(:node1){Node.new("a")}
    let(:node2){Node.new('b')}
    let(:node3){Node.new('c')}
    it 'returns 0 if list is empty' do
      expect(ll1.size).to eq 0
    end

    it 'returns 1 if list has one element' do
      ll1.insert_first(node1)
      expect(ll1.size).to eq 1
    end

    it 'returns correct size if list has multiple elements' do
      ll1.insert_first(node1)
      ll1.insert_first(node2)
      ll1.insert_first(node3)
      expect(ll1.size).to eq 3
    end
  end





end
