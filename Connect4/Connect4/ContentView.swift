//
//  ContentView.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Grid()
                .stroke(Color.red, lineWidth: 2)
            
            Triangle()
                .fill(Color.green.opacity(0.7))
            
            Triangle()
                .stroke(Color.purple, lineWidth: 4)
            
            Cover()
                .fill(Color.yellow.opacity(0.5))
        }
    }
}

struct Cover: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.addRect(CGRect(x: 0.25 * rect.width, y: 0.25 * rect.height, width: 0.5 * rect.width, height: 0.5 * rect.height))
    
        return path
    }
}

struct Grid: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for row in 0..<4 {
            path.move(to: CGPoint(x: 120, y: 200 + row * 20))
            path.addLine(to: CGPoint(x: 240, y: 200 + row * 20))
        }
        
        // vertical
        
        for col in 0..<7 {
            path.move(to: CGPoint(x: 120 + col * 20, y: 200))
            path.addLine(to: CGPoint(x: 120 + col * 20, y: 200 + 3 * 20))
        }
        
        return path
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // triangle
        path.move(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 300, y: 400))
        path.addLine(to: CGPoint(x: 50, y: 400))
        path.closeSubpath()
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
