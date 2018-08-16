//
//  TerrainNodeExtension+Routes.swift
//  MapboxSceneKit
//
//  Created by Jim Martin on 8/16/18.
//  Copyright © 2018 MapBox. All rights reserved.
//

import Foundation
import SceneKit
import CoreLocation

extension TerrainNode {
    
    @objc
    public func addPolyline( coordinates: [CLLocation], startRadius: CGFloat, endRadius: CGFloat, startColor: UIColor, endColor: UIColor) -> PolylineNode{
        
        var scenePositions : [SCNVector3] = []
        for coord in coordinates {
            let position = self.positionForLocation(coord)
            scenePositions.append(position)
        }
        
        let lineNode = PolylineNode(positions: scenePositions, startRadius: startRadius, endRadius: endRadius, startColor: startColor, endColor: endColor)
        self.addChildNode(lineNode)
        return lineNode
    }
    
    
}
