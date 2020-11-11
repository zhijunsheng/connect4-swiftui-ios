//
//  ContentView.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path { path in
            
            // horizontal
            
            for row in 0..<4 {
                path.move(to: CGPoint(x: 20, y: 30 + row * 20))
                path.addLine(to: CGPoint(x: 140, y: 30 + row * 20))
            }
            
            // vertical
            
            for col in 0..<7 {
                path.move(to: CGPoint(x: 20 + col * 20, y: 30))
                path.addLine(to: CGPoint(x: 20 + col * 20, y: 30 + 3 * 20))
            }
            
            // triangle
            path.move(to: CGPoint(x: 200, y: 200))
            path.addLine(to: CGPoint(x: 300, y: 400))
            path.addLine(to: CGPoint(x: 50, y: 400))
            path.closeSubpath()
        }
        .stroke(Color.purple, lineWidth: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
