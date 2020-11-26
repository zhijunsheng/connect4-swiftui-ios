//
//  ConnnectFourView.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-10.
//

import SwiftUI

struct ConnnectFourView: View {
    @ObservedObject var conn4VM: ConnnectFourViewModel
    
    var body: some View {
        VStack {
            HStack {
                ForEach (0..<7) { col in
                    VStack {
                        ForEach (0..<6) { i in
                            Conn4Cell(piece: conn4VM.pieceAt(col: col, row: 5 - i))
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        conn4VM.dropAndSend(at: col)
                    }
                }
            }
            .aspectRatio(7/6, contentMode: .fit)
            .layoutPriority(100)
            
            Button("Reset") {
                conn4VM.reset()
            }
            .font(.largeTitle)
            
            Button("Advertise") {
                conn4VM.advertise()
            }
            .font(.largeTitle)
            
            Button("Invite") {
                conn4VM.invite()
            }
            .font(.largeTitle)
        }
        
        .padding()
    }
}

struct Conn4Cell: View {
    var piece: ConnectFour.Piece?
    
    var body: some View {
        ZStack {
            if let piece = piece {
                if piece.player == .red {
                    Circle().fill(Color.red)
                } else {
                    Circle().fill(Color.yellow)
                }
            }
            Circle().stroke(lineWidth: 3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConnnectFourView(conn4VM: ConnnectFourViewModel())
    }
}
