//
//  Conn4VM.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-23.
//

import SwiftUI

class Conn4VM {
    private var game = Conn4()
    
    func dropAt(col: Int) {
        game.dropAt(col: col)
    }
}
