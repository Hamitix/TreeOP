//
//  LocalTreeRepositoryImpl.swift
//  TreeOP
//
//  Created by Dylan HAMITI on 10/05/2022.
//

import Foundation

struct LocalTreeRepositoryImpl: LocalTreeRepository {
    
    var dataSource: LocalTreeDataSource
    
    func getTreeList() throws -> [GeolocatedTree] {
        try dataSource.getTreeListLocal()
    }
}