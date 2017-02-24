# DRIVER CODE FOR ALGORITHM.RB
require_relative 'algorithm'

# TEST NODE INSTANCES AND CLASS WORKS
@node = Node.new({a: [0,1]})

test_interest_points = [
  { name: 'a', x: 0, y: 1 },
  { name: 'b', x: 0, y: 2 },
  { name: 'c', x: 2, y: 0 },
  { name: 'd', x: 3, y: 3 },
  { name: 'e', x: 1, y: 0 },
  { name: 'f', x: 3, y: 2 },
  { name: 'g', x: 2, y: 5 },
  { name: 'h', x: 1, y: 3 }
]

start_point = { name: 'start_point', x: 0, y: 0 }
end_point = { name: 'end_point', x: 5, y: 5 }

test_interest_points.each do |point|
  @node = Node.new(point)
  # p @node
end

# TEST GRAPH INSTANCES AND CLASS AND EDGE CREATION WORKS
  # CURRENT ISSUES:  NODE DOES CREATE PATH TO ITSELF
# @nodea = Node.new(test_interest_points[0])
# @nodeb = Node.new(test_interest_points[1])

# @graph = Graph.new
# @graph.add_edge(@nodea, @nodeb)
# p "node A adj"
# p @nodea.adjacents
# p "node B adj"
# p @nodeb.adjacents
# @graph.add_edge(@nodeb, @nodea)

# p "node A adj"
# p @nodea.adjacents
# p "node B adj"
# p @nodeb.adjacents

# @graph.add_edge(@nodea, @nodeb)

# p "node A adj after 2nd add"
# p @nodea.adjacents


# Each node is connected to itself and each other node woo.
# our_meander = Meandr.new(start_point, end_point, test_interest_points, 20)

# p our_meander  ## #<Meandr:0x007f9c050d59c8 @source_node=#<Node:0x007f9c050d59a0 @adjacents=#<Set: {}>, @name="start_point", @x=0, @y=0>, @end_node=#<Node:0x007f9c050d5928 @adjacents=#<Set: {}>, @name="end_point", @x=5, @y=5>, @graph=#<Graph:0x007f9c050d58b0>, @interest_points=[{:name=>"a", :x=>0, :y=>1}, {:name=>"b", :x=>0, :y=>2}, {:name=>"c", :x=>2, :y=>0}, {:name=>"d", :x=>3, :y=>3}, {:name=>"e", :x=>1, :y=>0}, {:name=>"f", :x=>3, :y=>2}, {:name=>"g", :x=>2, :y=>5}, {:name=>"h", :x=>1, :y=>3}], @nodea=#<Node:0x007f9c05086ff8 @adjacents=#<Set: {#<Node:0x007f9c05086f80 @adjacents=#<Set: {#<Node:0x007f9c05086ff8 ...>}>, @name="h", @x=1, @y=3>}>, @name="h", @x=1, @y=3>, @nodeb=#<Node:0x007f9c05086f80 @adjacents=#<Set: {#<Node:0x007f9c05086ff8 @adjacents=#<Set: {#<Node:0x007f9c05086f80 ...>}>, @name="h", @x=1, @y=3>}>, @name="h", @x=1, @y=3>>
