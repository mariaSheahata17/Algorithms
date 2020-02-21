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
    var edgesList : [[Edge]]?
    
    init(verticesNum : Int){
        self.verticesNum = verticesNum
    }
    
    func addEdge( edge : Edge){
        var v1 = edge.either()
        var v2 = edge.other(vertex : v1)
        edgesList![v1].append(edge)
        edgesList![v2].append(edge)
    }
    
    func adjacentEdges(vertix : Int) -> [Edge]{
        return edgesList![vertix]
    }
}
