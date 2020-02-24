//
//  WeightedEdgeGraph.swift
//  KruskalsAlgorithm
//
//  Created by Maria Shehata on 2/20/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

class EdgeWeightedGraph{
    
    var verticesNum : Int
    var edgesList = [[Edge]]()
    var verticesList : [Int] = [Int]()
    var edges : [Edge] = [Edge]()
    
    init(verticesNum : Int){
        self.verticesNum = verticesNum
        for i in 0..<self.verticesNum {
            verticesList[i] = i
        }
    }
    
    func addEdge( edge : Edge){
        let v1 = edge.either()
        let v2 = edge.other(vertex : v1)
        edgesList[v1].append(edge)
        edgesList[v2].append(edge)
        edges.append(edge)
    }
    
    func adjacentEdges(vertix : Int) -> [Edge]{
        return edgesList[vertix]
    }
    
    func graphVertices() -> [Int]{
        return self.verticesList
    }
    
    func graphEdges() -> [Edge]{
        return self.edges
    }

}

