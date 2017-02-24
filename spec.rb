require 'minitest/autorun'

require_relative 'graph'
require_relative 'node'
require_relative 'breadth_first_search'

describe BreadthFirstSearch do
  before do
    p @node1 = Node.new("Node #1")
    p @node2 = Node.new("Node #2")
    p @node3 = Node.new("Node #3")
    p @node4 = Node.new("Node #4")
    p @node5 = Node.new("Node #5")
    p @node6 = Node.new("Node #6")
    p @node7 = Node.new("Node #7")
    p @node8 = Node.new("Node #8")
  end

  it 'finds the shortest path to a node' do
    graph = Graph.new
    # Potential path one
    graph.add_edge(@node1, @node2)
    graph.add_edge(@node2, @node3)
    graph.add_edge(@node3, @node4)
    graph.add_edge(@node4, @node8)

    # Potential path two
    graph.add_edge(@node1, @node5)
    graph.add_edge(@node5, @node6)
    graph.add_edge(@node6, @node8)

    # Potential path three
    graph.add_edge(@node1, @node7)
    graph.add_edge(@node7, @node8)

    # BREADTHFIRSTSEARCH call maps every single possible path
    # then shortest path to ...
    path = BreadthFirstSearch.new(graph, @node1)
    .shortest_path_to(@node8)
    # p path
    # p path.length
    path.must_equal [@node1, @node7, @node8]
  end
end
