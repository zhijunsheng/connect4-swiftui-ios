//
//  ContentView.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-10.
//

import SwiftUI

struct Conn4View: View {
    @ObservedObject var conn4VM: Conn4VM
    
    var body: some View {
        HStack {
            ForEach (0..<7) { col in
                VStack {
                    ForEach (0..<6) { i in
                        Conn4Cell(piece: conn4VM.pieceAt(col: col, row: 5 - i))
                    }
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    conn4VM.dropAt(col: col)
                }
            }
        }
        .padding()
    }
}

struct Conn4Cell: View {
    var piece: Conn4.Piece?
    
    var body: some View {
        ZStack {
            if let piece = piece {
                if piece.player == .red {
                    Circle().fill(Color.red)
                } else {
                    Circle().fill(Color.yellow)
                }
            }
            Circle().stroke()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Conn4View(conn4VM: Conn4VM())
    }
}
