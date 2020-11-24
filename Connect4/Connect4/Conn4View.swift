//
//  ContentView.swift
//  Connect4
//
//  Created by Golden Thumb on 2020-11-10.
//

import SwiftUI

struct Conn4View: View {
    var body: some View {
        HStack {
            ForEach (0..<7) {_ in
                VStack {
                    ForEach (0..<6) { _ in
                        ZStack {
                            Circle().stroke()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Conn4View()
    }
}
