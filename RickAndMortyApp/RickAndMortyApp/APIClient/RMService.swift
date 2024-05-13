//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by admin on 13/05/2024.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
