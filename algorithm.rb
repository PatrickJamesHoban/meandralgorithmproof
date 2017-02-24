# FRIDAY: 
# FIRST PROVE OUT THAT THIS WORKS
# SECOND MERGE IN FUNCTIONALITY FROM BREADTHFIRSTSEARCH FILE

class Meandr
  def initialize(start_point, end_point, interest_points, available_time)
    @source_node = Node.new(start_point)
    @end_node = Node.new(end_point)
    @graph = Graph.new
    create_edges(self.graph)
  end
    
  def create_edges(graph)
    interest_points.each do |point1|
      @nodea = point1
      interest_points.each do |point2|
        @nodea = Node.new(@nodea)
        @nodeb = Node.new(point2)
        # plug all into array
        # uniq it
        # double check to make sure points arent' edged on themselves
        # add_edge on each 
        graph.add_edge(@nodea, @nodeb)
      end
    end
  end

  short_distance = distance(start_point, end_point)
  total_time = find_extra_time(available_time)
end

class Node
  attr_accessor :name, :x, :y, :adjacents
  def initialize(args)
    # Set ensures no duplicate routes.
    @adjacents = Set.new
    @name = args[:name]
    @x = args[:x]
    @y = args[:y]
  end

  def xycoordinates
    [@x, @y]
  end

  def to_s
    @name
  end
end

class Graph
  def add_edge(node_a, node_b)
    node_a.adjacents << node_b
    node_b.adjacents << node_a
  end
end

# passing nodes[a] & nodes[b]
def distance(point1, point2)
  # square root of (x2-x1) squared + (y2-y1) squared
  Math.sqrt(((point2[0]-point1[0])**2)+((point2[1]-point1[1])**2))
end

def distance_to_min(distance)
  # rough estimate for now that each unit distance is 3 minutes
  min = distance * 3
end


#DRIVER CODE
# graph = [
#   [0,0],[0,1],[0,2],[0,3],
#   [1,0],[1,1],[1,2],[1,3],
#   [2,0],[2,1],[2,2],[2,3],
#   [3,0],[3,1],[3,2],[3,3],
# ]

interest_points = [
  { name: 'a', x: 0, y: 0 },
  { name: 'b', x: 0, y: 2 },
  { name: 'c', x: 2, y: 0 },
  { name: 'd', x: 3, y: 3 }
]

edges = [
  {points:[nodes[:a],nodes[:b]], distance: 3}
]

p 'a to b'
p distance(nodes[:a], nodes[:b])
p 'a to c'
p distance(nodes[:a], nodes[:c])
p 'c to d'
p distance(nodes[:c], nodes[:d])
p 'a to d'
p distance(nodes[:a], nodes[:d])
p 'b to d'
p distance(nodes[:b], nodes[:d])
p 'b to c'
p distance(nodes[:b], nodes[:c])

# PSEUDOCODE 
# INPUTS: 
  # user: time, point a, point b
  # google: closest nodes

# look at distance from a to b
# assume 1:1 distance and time
# look at all other routes and the time taken
# if under user time, add to array.

# OUTPUTS: return last item in array
