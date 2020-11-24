//
//  Conn4.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import Foundation

struct Conn4 {
    private var piecesBox: Set<Piece> = []
    private var whoseTurn: Player = .red
    
    mutating func dropAt(col: Int) {
        let numPiecesAtCol = numPieces(at: col)
        piecesBox.insert(Piece(col: col, row: numPiecesAtCol, player: whoseTurn))
        whoseTurn = whoseTurn == .red ? .yellow : .red
    }
    
    func pieceAt(col: Int, row: Int) -> Piece? {
        for piece in piecesBox {
            if piece.col == col && piece.row == row {
                return piece
            }
        }
        return nil
    }
    
    func numPieces(at col: Int) -> Int {
        var cnt: Int = 0
        for piece in piecesBox {
            if piece.col == col {
                cnt += 1
            }
        }
        return cnt
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
