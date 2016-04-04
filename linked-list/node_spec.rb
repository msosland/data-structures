require_relative 'node'

describe Node do
  let(:node1) {Node.new("value1")}
  let(:node2) {Node.new("value2")}
  let(:node3) {Node.new("value3")}

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
      node2.insert_after(node3)
      expect(node1.next_node).to eq node2
      expect(node2.next_node).to eq node3
      node1.remove_after
      expect(node1.next_node).to eq node3
      expect(node2.next_node).to eq nil
    end
  end

end
