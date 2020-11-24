//
//  Conn4Tests.swift
//  Connect4Tests
//
//  Created by Golden Thumb on 2020-11-23.
//

import XCTest
@testable import Connect4

class Conn4Tests: XCTestCase {
    
    func testDropAt() {
        var model = Conn4()
        print(model)
        model.dropAt(col: 3)
        model.dropAt(col: 3)
        print(model)
        XCTAssertNotNil(model.pieceAt(col: 3, row: 0))
    }

    func testDescription() {
        let model = Conn4()
        XCTAssertTrue(model.description.contains("2 . . . . . . ."))
    }

}
