//
//  Conn4.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import Foundation

struct Conn4 {
    private var piecesBox: Set<Piece> = []
    
    func dropAt(col: Int) {
        
    }
    
    func pieceAt(col: Int, row: Int) -> Piece? {
        return nil
    }
    
    struct Piece: Hashable {
        var col: Int
        var row: Int
    }
}
