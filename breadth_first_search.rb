# Put unvisited nodes on a queue
# Solves the shortest path problem: Find path from "source" to "target"
# that uses the fewest number of edges ##  JUST CHANGE TO RETURN MOST NUMBER OF EDGES!!!
# It's not recursive (like depth first search)
#
# The steps are quite simple:
# * Put s into a FIFO queue and mark it as visited
# * Repeat until the queue is empty:
#   - Remove the least recently added node n
#   - add each of n's unvisited adjacents to the queue and
#     mark them as visited

class BreadthFirstSearch
  def initialize(graph, source_node)
    # graph is a series of edges he established in spec.
    @graph = graph
    @node = source_node
    @visited = []
    @edge_to = {}

    bfs(source_node)
  end

  def shortest_path_to(end_node)
    #checks if you've already been there
    return unless has_path_to?(end_node)
    path = []

    # while end point is not equal to start point,
    while(end_node != @node) do
      # unshift adds the node to the beginning of the array
      path.unshift(end_node)
      
      end_node = @edge_to[end_node]
    end

    path.unshift(@node)
  end

  private
  def bfs(node)
    # Remember, in the breadth first search we always
    # use a queue. In ruby we can represent both
    # queues and stacks as an Array, just by using
    # the correct methods to deal with it. In this case,
    # we use the "shift" method to remove an element
    # from the beginning of the Array.

    # First step: Put the source node into a queue and mark it as visited
    queue = []
    queue << node
    # p "queue"
    # queue.each do |node|
    #   puts node
    # end

    @visited << node
    # p "visited"
    # @visited.each do |node|
    #   puts node
    # end

    # Second step: Repeat until the queue is empty:
    # - Remove the least recently added node n
    # - add each of n's unvisited adjacents to the queue and mark them as visited
    while queue.any?
      current_node = queue.shift # remove first element
      # takes all the adjacents for a starting node
      current_node.adjacents.each do |adjacent_node|
        # skip adjacent node if it's already been visited.  Keeps the path from going back on itself or revisiting any points.  Prevents it from going back on itself.
        next if @visited.include?(adjacent_node)
        # 
        # p "queue"
        queue << adjacent_node
        # queue.each do |node|
        #   puts node
        # end
        # p "visited"
        @visited << adjacent_node
        # @visited.each do |node|
        #   puts node
        # end
        # not edge, but just { nodeb: nodea, } maps every single possible path outward from the source node.
        @edge_to[adjacent_node] = current_node
        # Why does it run this 4 times?
        # p "edge_to"
        # @edge_to.each do |key, value|
        #   puts key
        #   puts value
        # end
        # p @edge_to
      end
      p "edge_to"
      @edge_to.each do |key, value|
        puts key
        puts value
        puts ""
      end
    end
  end

  # If we visited the node, so there is a path
  # from our source node to it.
  def has_path_to?(end_node)
    @visited.include?(end_node)
  end
end
