//
//  DeCacheTests.swift
//  DeCacheTests
//
//  Created by David Ilenwabor on 16/08/2021.
//

import XCTest
@testable import DeCache

class DeCacheTests: XCTestCase {
    var testStore: Store!
    override func setUpWithError() throws {
        testStore = TestStore()
    }

    override func tearDownWithError() throws {
        testStore = nil
    }

    func testIntSave() throws {
        testStore.saveInt(value: 15, key: "int")
        XCTAssertEqual(testStore.getInt(key: "int"), 15)
    }
    
    func testStringSave() throws {
        testStore.saveString(value: "Hi", key: "string")
        XCTAssertEqual(testStore.getString(key: "string"), "Hi")
    }
    
    func testBoolSave() throws {
        testStore.saveBoolean(value: true, key: "bool")
        XCTAssertTrue(testStore.getBoolean(key: "bool"))
    }
    
    func testArraySave() throws {
        let testArr = ["Hi", "Hello"]
        testStore.saveArray(value: testArr, key: "array")
        XCTAssertEqual(testStore.getArray(key: "array"), testArr)
    }
    
    func testDoubleSave() throws {
        testStore.saveDouble(value: 15.0, key: "double")
        XCTAssertEqual(testStore.getDouble(key: "double"), 15.0)
    }
    
    func testObjectSave() throws {
        let object = MockObject()
        testStore.saveObject(value: object, key: "object")
        let retrievedData = testStore.getData(key: "object")!
        let retrievedObject = try! JSONDecoder().decode(MockObject.self, from: retrievedData)
        XCTAssertEqual(object, retrievedObject)
    }
    
    fileprivate struct MockObject: Codable, Equatable {
        var id: UUID = UUID.init()
        static func == (lhs: DeCacheTests.MockObject, rhs: DeCacheTests.MockObject) -> Bool {
            lhs.id == rhs.id
        }
    }
}
