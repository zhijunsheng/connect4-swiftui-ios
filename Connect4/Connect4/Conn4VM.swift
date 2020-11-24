//
//  Conn4VM.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import SwiftUI

class Conn4VM: ObservableObject {
    @Published private var game = Conn4()
    
    func reset() {
        game.reset()
    }
    
    func pieceAt(col: Int, row: Int) -> Conn4.Piece? {
        game.pieceAt(col: col, row: row)
    }
    
    func dropAt(col: Int) {
        game.dropAt(col: col)
    }
}
