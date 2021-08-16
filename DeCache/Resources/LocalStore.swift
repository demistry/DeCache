//
//  LocalStore.swift
//  DeCache
//
//  Created by David Ilenwabor on 16/08/2021.
//

import Foundation

class LocalStore: Store {
    
    private let userDefaults: UserDefaults
    init() {
        userDefaults = UserDefaults.standard
    }
    
    func saveInt(value: Int, key: String) {
        userDefaults.set(value, forKey: key)
    }
    
    func saveBoolean(value: Bool, key: String) {
        userDefaults.set(value, forKey: key)
    }
    
    func saveString(value: String, key: String) {
        userDefaults.set(value, forKey: key)
    }
    
    func saveDouble(value: Double, key: String) {
        userDefaults.set(value, forKey: key)
    }
    
    func saveArray<T: Encodable>(value: [T], key: String) {
        do {
            let data = try JSONEncoder().encode(value)
            userDefaults.set(data, forKey: key)
        } catch {
            fatalError(DECacheError.saveError.localizedDescription) 
        }
    }
    
    func saveObject<T>(value: T, key: String) where T : Encodable {
        do {
            let data = try JSONEncoder().encode(value)
            userDefaults.set(data, forKey: key)
        } catch {
            fatalError(DECacheError.saveError.localizedDescription) 
        }
    }
    
    // MARK: Retrieval Methods
    func getInt(key: String) -> Int {
        userDefaults.integer(forKey: key)
    }
    
    func getBoolean(key: String) -> Bool {
        userDefaults.bool(forKey: key)
    }
    
    func getString(key: String) -> String {
        userDefaults.string(forKey: key) ?? ""
    }
    
    func getDouble(key: String) -> Double {
        userDefaults.double(forKey: key)
    }
    
    func getArray<T: Decodable>(key: String) -> [T] {
        let data = getData(key: key)
        if let data = data {
            let array = try? JSONDecoder().decode([T].self, from: data)
            return array ?? []
        } else {
            return []
        }
    }
    
    func getData(key: String) -> Data? {
        userDefaults.data(forKey: key)
    }
}
