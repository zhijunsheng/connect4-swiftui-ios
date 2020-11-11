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
            path.move(to: CGPoint(x: 20, y: 30))
            path.addLine(to: CGPoint(x: 140, y: 30))
            
            path.move(to: CGPoint(x: 20, y: 30 + 1 * 20))
            path.addLine(to: CGPoint(x: 140, y: 30 + 1 * 20))
            
            path.move(to: CGPoint(x: 20, y: 30 + 2 * 20))
            path.addLine(to: CGPoint(x: 140, y: 30 + 2 * 20))
            
            path.move(to: CGPoint(x: 20, y: 30 + 3 * 20))
            path.addLine(to: CGPoint(x: 140, y: 30 + 3 * 20))
            
            // vertical
            path.move(to: CGPoint(x: 20, y: 30))
            path.addLine(to: CGPoint(x: 20, y: 30 + 3 * 20))
            
            path.move(to: CGPoint(x: 20 + 1 * 20, y: 30))
            path.addLine(to: CGPoint(x: 20 + 1 * 20, y: 30 + 3 * 20))
            
            path.move(to: CGPoint(x: 20 + 2 * 20, y: 30))
            path.addLine(to: CGPoint(x: 20 + 2 * 20, y: 30 + 3 * 20))
            
            path.move(to: CGPoint(x: 20 + 3 * 20, y: 30))
            path.addLine(to: CGPoint(x: 20 + 3 * 20, y: 30 + 3 * 20))
            
            path.move(to: CGPoint(x: 20 + 4 * 20, y: 30))
            path.addLine(to: CGPoint(x: 20 + 4 * 20, y: 30 + 3 * 20))
            
            path.move(to: CGPoint(x: 20 + 5 * 20, y: 30))
            path.addLine(to: CGPoint(x: 20 + 5 * 20, y: 30 + 3 * 20))
            
            path.move(to: CGPoint(x: 20 + 6 * 20, y: 30))
            path.addLine(to: CGPoint(x: 20 + 6 * 20, y: 30 + 3 * 20))
            
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
