class Node
	attr_reader :value, :edges

	def initialize(value)
		@value = value
		@edges = []
	end

	def add_edge(other_node)
		@edges << other_node
	end

	def nodes
		@edges
	end

end