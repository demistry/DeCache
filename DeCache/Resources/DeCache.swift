//
//  DeCache.swift
//  DeCache
//
//  Created by David Ilenwabor on 16/08/2021.
//

import Foundation

public class DECache {
    
    private static let localStore: LocalStore = LocalStore()
    
    static func saveString(_ value: String,_ key: DECacheKey) {
        localStore.saveString(value: value, key: key.keyLiteral)
    }
    
    static func saveBool(value: Bool,_ key: DECacheKey) {
        localStore.saveBoolean(value: value, key: key.keyLiteral)
    }
    
    static func saveDouble(value: Double,_ key: DECacheKey) {
        localStore.saveDouble(value: value, key: key.keyLiteral)
    }
    
    static func saveInt(value: Int,_ key: DECacheKey) {
        localStore.saveInt(value: value, key: key.keyLiteral)
    }
    
    static func saveArray<T: Encodable>(value: [T],_ key: DECacheKey) {
        localStore.saveArray(value: value, key: key.keyLiteral)
    }
    
    static func saveObject<T: Encodable>(value: T,_ key: DECacheKey) {
        localStore.saveObject(value: value, key: key.keyLiteral)
    }
}
