//
//  DECacheErrors.swift
//  DeCache
//
//  Created by David Ilenwabor on 16/08/2021.
//

import Foundation

enum DECacheError: Error {
    case saveError
    
    var localizedDescription: String {
        switch self {
        case .saveError:
            return "\(self) \(#line) Could not save object to cache"
        }
    }
}
