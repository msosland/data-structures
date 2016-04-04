require_relative 'node'

describe Node do
  let(:node1) {Node.new("value1")}
  let(:node2) {Node.new("value2")}

  describe "#new" do
    it "initializes a node with a pointer to nil" do
      expect(node1.next_node).to eq nil
    end
  end

  describe "#insert after" do
    it "sets the next node to another node" do
      node1.insert_after(node2)
      expect(node1.next_node).to eq node2
    end
  end

  describe "#remove_after" do
    it "removes next node from list" do
      node1.insert_after(node2)
      expect(node1.next_node).to eq node2
      node1.remove_after
      expect(node1.next_node).to eq nil
    end
  end

end
