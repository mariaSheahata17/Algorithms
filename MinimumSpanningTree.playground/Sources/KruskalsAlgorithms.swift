import Foundation

class KruckalMST{
    
    var MST = PriorityQueue<Edge>(sort: <)
    
    init(graph : EdgeWeightedGraph){
        // insert graph edges in the priority queue
        var priorityQueue = PriorityQueue<Edge>(sort: <)
        for edge in graph.graphEdges(){
            priorityQueue.enqueue(edge)
        }
        
        // create Union Find
        var uf = QuickFindUF(arraySize :graph.verticesNum)
        
        // building MST
        while !priorityQueue.isEmpty && MST.count < (graph.verticesNum - 1){
            var edge = priorityQueue.dequeue()
            var v1 = edge!.either() , v2 = edge!.other(vertex: v1)
            if !uf.connected(num1: v1, num2: v2){
                uf.union(num1: v1, num2: v2)
                MST.enqueue(edge!)
            }
        }
    }
    
    func mst() -> PriorityQueue<Edge> {
        return MST
    }
    
    
    
}
