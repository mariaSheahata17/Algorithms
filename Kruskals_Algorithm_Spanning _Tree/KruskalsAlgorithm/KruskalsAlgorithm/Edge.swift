//
//  Edge.swift
//  KruskalsAlgorithm
//
//  Created by Maria Shehata on 2/20/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation
/*
 This class defines the Edge struct. The Edge is the main unit of the graph. Each edge has a weight that will be used to compare the graph edges to build the minimum spanning tree
*/


struct Edge{
    
    var vertex1 : Int
    var vertex2 : Int
    var weight :Int
    
    init(vertex1 : Int, vertex2 : Int, weight :Int ){
        self.vertex1 = vertex1
        self.vertex2 = vertex2
        self.weight = weight
    }
    
    func either() -> Int {
        return vertex1
    }
    
    func other( vertex : Int )-> Int {
        if vertex == vertex1 {return vertex2}
        return vertex1
    }
    
}

extension Edge :Comparable {
    
    static func <( edge1 : Edge , edge2 : Edge) -> Bool{
        return edge1.weight < edge2.weight
    }
    
}
