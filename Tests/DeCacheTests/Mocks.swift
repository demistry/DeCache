//
//  Mocks.swift
//  DeCacheTests
//
//  Created by David Ilenwabor on 16/08/2021.
//

@testable import DeCache
import Foundation

class TestStore: Store {
    private var cache: [String: Any] = [:]
    func saveInt(value: Int, key: String) {
        cache[key]  = value
    }
    
    func saveBoolean(value: Bool, key: String) {
        cache[key]  = value
    }
    
    func saveString(value: String, key: String) {
        cache[key]  = value
    }
    
    func saveDouble(value: Double, key: String) {
        cache[key]  = value
    }
    
    func saveArray<T>(value: [T], key: String) where T : Encodable {
        cache[key]  = value
    }
    
    func saveObject<T>(value: T, key: String) where T : Encodable {
        let data = try! JSONEncoder().encode(value)
        cache[key]  = data
    }
    
    func getInt(key: String) -> Int {
        cache[key] as! Int
    }
    
    func getBoolean(key: String) -> Bool {
        cache[key] as! Bool
    }
    
    func getString(key: String) -> String {
        cache[key] as! String
    }
    
    func getDouble(key: String) -> Double {
        cache[key] as! Double
    }
    
    func getArray<T>(type: T, key: String) -> [T] where T : Decodable {
        cache[key] as! [T]
    }
    
    func getData(key: String) -> Data? {
        cache[key] as? Data
    }
    
    
}
