//
//  Conn4Tests.swift
//  Connect4Tests
//
//  Created by Golden Thumb on 2020-11-23.
//

import XCTest
@testable import Connect4

class Conn4Tests: XCTestCase {
    
    
    
    func testReset() {
        var model = ConnectFour()
        model.dropAt(col: 3)
        model.dropAt(col: 3)
        model.dropAt(col: 3)
        XCTAssertNotNil(model.pieceAt(col: 3, row: 0))
        
        model.reset()
        XCTAssertNil(model.pieceAt(col: 3, row: 0))
        
        XCTAssertEqual(.red, model.whoseTurn)
    }
    
    func testDropAt() {
        var model = ConnectFour()
        model.dropAt(col: 3)
        model.dropAt(col: 3)
        XCTAssertNotNil(model.pieceAt(col: 3, row: 0))
    }

    func testDescription() {
        let model = ConnectFour()
        XCTAssertTrue(model.description.contains("2 . . . . . . ."))
    }

}
