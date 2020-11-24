//
//  ConnectFour.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import Foundation

struct ConnectFour {
    private var piecesBox: Set<Piece> = []
    private(set) var whoseTurn: Player = .red
    
    mutating func dropAt(col: Int) {
        let numPiecesAtCol = numPieces(at: col)
        piecesBox.insert(Piece(col: col, row: numPiecesAtCol, player: whoseTurn))
        
        if verticalCount(col: col, row: numPiecesAtCol, player: whoseTurn) == 4 {
            print("game won by player: \(whoseTurn)")
        }
        
        whoseTurn = whoseTurn == .red ? .yellow : .red
    }
    
    mutating func reset() {
        piecesBox.removeAll()
        whoseTurn = .red
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
    
    func verticalCount(col: Int, row: Int, player: Player) -> Int {
        if pieceAt(col: col, row: row)?.player != player {
            return 0
        }
        if row == 0 {
            return 1
        }
        return 1 + verticalCount(col: col, row: row - 1, player: player)
    }
    
    enum Player {
        case red
        case yellow
        
        var isRed: Bool {
            self == .red
        }
    }
    
    struct Piece: Hashable {
        var col: Int
        var row: Int
        var player: Player
    }
}

extension ConnectFour: CustomStringConvertible {
    var description: String {
        var desc = ""
        
        for i in 0..<6 {
            desc += "\(5 - i)"
            for col in 0..<7 {
                if let piece = pieceAt(col: col, row: 5 - i) {
                    desc += piece.player.isRed ? " r" : " y"
                } else {
                    desc += " ."
                }
            }
            desc += "\n"
        }
        desc += "  0 1 2 3 4 5 6"
        
        return desc
    }
}
