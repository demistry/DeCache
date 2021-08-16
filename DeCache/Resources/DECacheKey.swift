//
//  DECacheKey.swift
//  DeCache
//
//  Created by David Ilenwabor on 16/08/2021.
//

import Foundation

public protocol DECacheKey {
    var hash: String { get }
}

enum Key: String, DECacheKey {
    case key
    var hash: String {
        return self.rawValue
    }
}

