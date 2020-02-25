
/*
 
 Graph Edges
 0-7 =16
 2-3 =17
 1-7 =19
 0-2 =26
 5-7 =28
 1-3 =29
 1-5 =32
 2-7 =34
 4-5 =35
 1-2 =36
 4-7 = 37
 0-4 =38
 6-2 =40
 3-6 =52
 6-0 =58
 6-4 =93
 
 MST Edges
 0-2  6-2
 0-7
 2-3
 1-7
 4-5
 5-7
 */
 
// creating Edges
var e1 = Edge(vertex1: 0,vertex2: 7,weight: 16)
var e2 = Edge(vertex1: 2,vertex2: 3,weight: 17)
var e3 = Edge(vertex1: 1,vertex2: 7,weight: 19)
var e4 = Edge(vertex1: 0,vertex2: 2,weight: 26)
var e5 = Edge(vertex1: 5,vertex2: 7,weight: 28)
var e6 = Edge(vertex1: 1,vertex2: 3,weight: 29)
var e7 = Edge(vertex1: 1,vertex2: 5,weight: 32)
var e8 = Edge(vertex1: 2,vertex2: 7,weight: 34)
var e9 = Edge(vertex1: 4,vertex2: 5,weight: 35)
var e10 = Edge(vertex1: 1,vertex2: 2,weight: 36)
var e11 = Edge(vertex1: 4,vertex2: 7,weight: 37)
var e12 = Edge(vertex1: 0,vertex2: 4,weight: 38)
var e13 = Edge(vertex1: 6,vertex2: 2,weight: 40)
var e14 = Edge(vertex1: 3,vertex2: 6,weight: 52)
var e15 = Edge(vertex1: 6,vertex2: 0,weight: 58)
var e16 = Edge(vertex1: 6,vertex2: 4,weight: 93)


// creating graph
var graph = EdgeWeightedGraph(verticesNum: 7)
graph.addEdge(edge: e1)
graph.addEdge(edge: e2)
graph.addEdge(edge: e3)
graph.addEdge(edge: e4)
graph.addEdge(edge: e5)
graph.addEdge(edge: e6)
graph.addEdge(edge: e7)
graph.addEdge(edge: e8)
graph.addEdge(edge: e9)
graph.addEdge(edge: e10)
graph.addEdge(edge: e11)
graph.addEdge(edge: e12)
graph.addEdge(edge: e13)
graph.addEdge(edge: e14)
graph.addEdge(edge: e15)
graph.addEdge(edge: e16)

// creating MST

var mstK = KruckalMST(graph: graph)
var mst = mstK.mst()






