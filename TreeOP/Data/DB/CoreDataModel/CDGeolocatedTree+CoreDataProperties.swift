//
//  CDGeolocatedTree+CoreDataProperties.swift
//  TreeOP
//
//  Created by Dylan HAMITI on 05/05/2022.
//
//

import Foundation
import CoreData

extension CDGeolocatedTree {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDGeolocatedTree> {
        return NSFetchRequest<CDGeolocatedTree>(entityName: "CDGeolocatedTree")
    }
    
    @NSManaged public var id: Int
    @NSManaged public var lat: Double
    @NSManaged public var lng: Double
    @NSManaged public var cdTree: CDTree
    
}

extension CDGeolocatedTree : Identifiable {
    
}

extension CDGeolocatedTree: CoreDataToGLTreeDomain {
    func CDToGLTreeDomain()  -> GeolocatedTree {
        GeolocatedTree(tree: cdTree.CDToTreeDomain(), lng: lng, lat: lat)
    }
}
