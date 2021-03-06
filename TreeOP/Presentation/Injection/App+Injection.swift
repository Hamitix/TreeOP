//
//  Add+Injection.swift
//  TreeOP
//
//  Created by Dylan HAMITI on 03/05/2022.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        defaultScope = .graph
        
        register { NetworkMonitor.shared }.scope(.application)
        
        registerViewModels()
        registerStores()
        registerDataSources()
        registerRepositories()
        registerUseCases()
        
    }
}
