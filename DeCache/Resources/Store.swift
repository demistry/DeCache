//
//  Store.swift
//  DeCache
//
//  Created by David Ilenwabor on 16/08/2021.
//

import Foundation


protocol Store {
    func saveInt(value: Int, key: String)
    func saveBoolean(value: Bool, key: String)
    func saveString(value: String, key: String)
    func saveDouble(value: Double, key: String)
    func saveArray<T: Encodable>(value: [T], key: String)
    func saveObject<T: Encodable>(value: T, key: String)
    
    func getInt(key: String) -> Int
    func getBoolean(key: String) -> Bool
    func getString(key: String) -> String
    func getDouble(key: String) -> Double
    func getArray<T: Decodable>(key: String) -> [T]
    func getData(key: String) -> Data?
}
