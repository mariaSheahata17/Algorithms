//
//  WeightedEdgeGraph.swift
//  KruskalsAlgorithm
//
//  Created by Maria Shehata on 2/20/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

import Foundation

public class EdgeWeightedGraph{
    
    var verticesNum : Int
    var edgesList = [[Edge]]()
    var verticesList : [Int] = [Int]()
    var edges : [Edge] = [Edge]()
    
   public init(verticesNum : Int){
        self.verticesNum = verticesNum
        //print("verticesNum = \(verticesNum)")
    for i in 0...self.verticesNum {
            //print("i = \(i)")
            verticesList.append(i)
            var row = [Edge]()
            self.edgesList.append(row)
        }
    //print("edgesList.count = \(edgesList.count)")
    
    }
    
   // add edge
   public func addEdge( edge : Edge){
        let v1 = edge.either()
        let v2 = edge.other(vertex : v1)
        edgesList[v1].append(edge)
        edgesList[v2].append(edge)
        edges.append(edge)

    }
    
   public func adjacentEdges(vertix : Int) -> [Edge]{
        return edgesList[vertix]
    }
    
  public  func graphVertices() -> [Int]{
        return self.verticesList
    }
    
   public func graphEdges() -> [Edge]{
        return self.edges
    }

}

