//
//  Conn4Tests.swift
//  Connect4Tests
//
//  Created by Golden Thumb on 2020-11-23.
//

import XCTest
@testable import Connect4

class Conn4Tests: XCTestCase {
    
    func testVerticalCount() {
        var model = ConnectFour()
        model.dropAt(col: 0) // r
        model.dropAt(col: 0) // y
        model.dropAt(col: 2) // r
        model.dropAt(col: 0) // y
        model.dropAt(col: 3) // r
        model.dropAt(col: 0) // y
        model.dropAt(col: 3) // r
        model.dropAt(col: 3) // y
        model.dropAt(col: 6) // r
        model.dropAt(col: 3) // y
        model.dropAt(col: 6) // r
        model.dropAt(col: 3) // y
        model.dropAt(col: 6) // r
        model.dropAt(col: 3) // y
        
        print(model)
        XCTAssertEqual(3, model.verticalCount(col: 0, row: 3, player: .yellow))
        XCTAssertEqual(0, model.verticalCount(col: 0, row: 3, player: .red))
        XCTAssertEqual(0, model.verticalCount(col: 0, row: 5, player: .yellow))
        XCTAssertEqual(0, model.verticalCount(col: 0, row: 5, player: .red))
        
        XCTAssertEqual(0, model.verticalCount(col: 1, row: 0, player: .yellow))
        XCTAssertEqual(0, model.verticalCount(col: 1, row: 5, player: .red))
        
        XCTAssertEqual(0, model.verticalCount(col: 2, row: 0, player: .yellow))
        XCTAssertEqual(1, model.verticalCount(col: 2, row: 0, player: .red))
        XCTAssertEqual(0, model.verticalCount(col: 2, row: 1, player: .yellow))
        XCTAssertEqual(0, model.verticalCount(col: 2, row: 2, player: .red))
        
        XCTAssertEqual(4, model.verticalCount(col: 3, row: 5, player: .yellow))
        XCTAssertEqual(0, model.verticalCount(col: 3, row: 5, player: .red))
        XCTAssertEqual(1, model.verticalCount(col: 3, row: 0, player: .red))
        XCTAssertEqual(2, model.verticalCount(col: 3, row: 1, player: .red))
        XCTAssertEqual(0, model.verticalCount(col: 3, row: 2, player: .red))
        XCTAssertEqual(1, model.verticalCount(col: 3, row: 2, player: .yellow))
        XCTAssertEqual(2, model.verticalCount(col: 3, row: 3, player: .yellow))
    }
    
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
