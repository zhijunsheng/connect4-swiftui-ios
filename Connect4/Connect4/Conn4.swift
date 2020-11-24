//
//  Conn4.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import Foundation

struct Conn4 {
    private var piecesBox: Set<Piece> = [Piece(col: 0, row: 0, player: .red), Piece(col: 0, row: 1, player: .yellow)]
    
    func dropAt(col: Int) {
        
    }
    
    func pieceAt(col: Int, row: Int) -> Piece? {
        for piece in piecesBox {
            if piece.col == col && piece.row == row {
                return piece
            }
        }
        return nil
    }
    
    enum Player {
        case red
        case yellow
    }
    
    struct Piece: Hashable {
        var col: Int
        var row: Int
        var player: Player
    }
}
