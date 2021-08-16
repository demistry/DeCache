//
//  DeCache.swift
//  DeCache
//
//  Created by David Ilenwabor on 16/08/2021.
//

import Foundation


/// Class to save to underlying cache
 
public class DeCache {
    
    private static let localStore: LocalStore = LocalStore()
    
    
    /// Saves a string type
    public static func saveString(_ value: String,_ key: DECacheKey) {
        localStore.saveString(value: value, key: key.keyLiteral)
    }
    
    
    /// Saves a boolean type
    public static func saveBool(value: Bool,_ key: DECacheKey) {
        localStore.saveBoolean(value: value, key: key.keyLiteral)
    }
    
    
    /// Saves a double type
    public static func saveDouble(value: Double,_ key: DECacheKey) {
        localStore.saveDouble(value: value, key: key.keyLiteral)
    }
    
    
    /// Saves an integer type
    public static func saveInt(value: Int,_ key: DECacheKey) {
        localStore.saveInt(value: value, key: key.keyLiteral)
    }
    
    
     /// Saves an array type whose elements are Encodable
    public static func saveArray<T: Encodable>(value: [T],_ key: DECacheKey) {
        localStore.saveArray(value: value, key: key.keyLiteral)
    }
    
    /// Retrieves a string value from cache
    public static func getString(_ key: DECacheKey) -> String {
        localStore.getString(key: key.keyLiteral)
    }
    
    
    /// Retrieves a boolean value from cache
    public static func getBoolean(_ key: DECacheKey) -> Bool {
        localStore.getBoolean(key: key.keyLiteral)
    }
    
    /// Retrieves an integer value from cache
    public static func getInt(_ key: DECacheKey) -> Int {
        localStore.getInt(key: key.keyLiteral)
    }
    
    /// Retrieves a double value from cache
    public static func getDouble(_ key: DECacheKey) -> Double {
        localStore.getDouble(key: key.keyLiteral)
    }
    
    /// Retrieves an array from cache
    public static func getArray<T: Decodable>(type: T, _ key: DECacheKey) -> [T] {
        localStore.getArray(type: type, key: key.keyLiteral)
    }
    
    
}
