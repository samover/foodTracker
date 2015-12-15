//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Fergus Lemon on 15/12/2015.
//  Copyright © 2015 Fergus Lemon. All rights reserved.
//
import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: FoodTracker Tests
    
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure Cases
        let noName = Meal(name: "" , photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")

        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Rating cannot be negative")

        let excellentRating = Meal(name: "Wicked rating", photo: nil, rating: 10)
        XCTAssertNil(excellentRating, "Rating cannot be higher than 5")
    }
}
