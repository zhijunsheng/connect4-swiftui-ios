//
//  ConnnectFourViewModel.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import SwiftUI

class ConnnectFourViewModel: ObservableObject {
    @Published private var game = ConnectFour()
    
    func reset() {
        game.reset()
    }
    
    func pieceAt(col: Int, row: Int) -> ConnectFour.Piece? {
        game.pieceAt(col: col, row: row)
    }
    
    func dropAt(col: Int) {
        game.dropAt(col: col)
    }
}
